
### Features

The backbone of the CapabilityStatement resource lays out which resources are supported by the system, and which API interactions, operations and search parameters are supported or required for which resources. However due to the richness of the FHIR specification, there are many features for how these general API capabilities are used in detail.

The existing capability statement could support all these features by continuing to add various boolean flags and coded elements, as has been done. There's a couple of problems with this approach:

The CapabilityStatement resource is too large, and getting larger. This applies to both the definition (general design) and also instances of the resources, which frequently run to many megabytes in side
Clients are often interested in a very specific subset of these features, but the existing design doesn't support subsetting or negotiation to find out whether specific features are supported
After considerable discussion, FHIR-I agreed to draft this alternative, where the features are defined using a terminological approach that allows for more flexibility around feature negotation. Note that this approach basically mandates feature negotation, because while the design of the resource itself is simplified, the actual instances of fully populated CapabilityStatement resources are very much larger. For this reason, the general intent is that by default, servers do not populate any features in their statements unless asked, though there is still utility in a fully populated feature statement.

#### How Features work

Features may be declared in a capability statement using the Capability Features CodeSystem. Each Feature is a pair: a code that identifies of which features is being described, and a value for that feature.

##### Identifying a Feature

Features are identified by an expression that includes the scope in which the feature is being asserted. Here's some examples:

- rest:server.resource:*.updateCreate = true - the server supports updateCreate on the update interaction for all resources
- rest:server.resource:CodeSystem.searchInclude = supplements - the server supports _include=CodeSystem.supplements
- rest:server.security.cors = false - the server doesn't support CORS
- rest:client.security.cors = true - the client requires a server that supports CORS
- rest:operation:validate-code.Codesystem:'http://snomed.info/sct'.compositional = true - the server can validate post-coordinated SNOMED codes

The full details of the expression format are described below.

Clients interacting with a FHIR server that supports this implementation guide SHOULD NOT download entire CapabilityStatement resources, since they may be many megabytes in size, instead use the $feature-query operation to determine if the server supports needed features. 

##### Value for a Feature 
Each feature has a value. The type of value depends on the feature, and is defined for the feature. Feature value are one of:

- a boolean value - true or false
- A code defined in the Capability Features code system
- A code defined in some other code system in the FHIR specification
- Todo: how do IGs work?

The capability statement can include features either on the base of the statement, or on the elements inside the resource. Features defined inside the capability statement automatically have an implied scope, but are otherwise the same statement.

Here is an example of a feature defined for all resources available via REST:


		<CapabilityStatement2 xmlns="http://hl7.org/fhir">
			<rest>
				<extension
						   url="http://www.hl7.org/fhir/uv/capstmt/StructureDefinition/feature">
				  <extension url="code">
					<valueCodeableConcept>
					  <coding>
						<system
								value="http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-feature-cs"/>
						<code value="versioning"/>
					  </coding>
					</valueCodeableConcept>
				  </extension>
				  <extension url="value">
					<valueCodeableConcept>
					  <coding>
						<system
								value="http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-feature-value-cs"/>
						<code value="versioned"/>
					  </coding>
					</valueCodeableConcept>
				  </extension>
				</extension>
			</rest>
		</CapabilityStatement2>
		
		
Here is the same feature only defined on CodeSystem:
  
		<CapabilityStatement2 xmlns="http://hl7.org/fhir">
			<rest>
				<resource>
					<type value="CodeSystem"/>
					<extension
							   url="http://www.hl7.org/fhir/uv/capstmt/StructureDefinition/feature">
					  <extension url="code">
						<valueCodeableConcept>
						  <coding>
							<system
									value="http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-feature-cs"/>
							<code value="versioning"/>
						  </coding>
						</valueCodeableConcept>
					  </extension>
					  <extension url="value">
						<valueCodeableConcept>
						  <coding>
							<system
									value="http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-feature-value-cs"/>
							<code value="versioned"/>
						  </coding>
						</valueCodeableConcept>
					  </extension>
					</extension>
				</resource>
			</rest>
		</CapabilityStatement2>
		

Note, however, that the feature scopes are not restricted to the contexts implied by the structure of the CapabilityStatement2 resource. Feature contexts are defined for features that are deeper into the system than those defined by the CapabilityStatement2 resource.

#### Asking for features in a CapabilityStatement 

By default, when a client asks a server for it's capability statement using /metadata, which features to report on is at the discretion of the server. Typically, servers will not report any features by default.

Clients can request that a server by using the feature parameter, which represents a query for information about a particular feature:

		GET [base]/metadata?feature=resource:CodeSystem

This is a request for all features that pertain to how the CodeSystem resource is implemented. A client can repeat the feature parameter any number of times.

Other examples of query mode usage:

- searchInclude - return all the searchInclude statements for all contexts
- rest.operation:validate-code.compositional - return, for all supported code systems, whether compositional grammar is supported. Note that a server would not be expected to return a feature for every code system, only where it has something to say (e.g. code systems that are compositional)

#### Feature Negotiation

In addition to querying for a capability statement, clients can do negotation. There are 2 different approaches that are supported: an operation, and an HTTP header.

##### Operation 

TODO: provide example of calling the operation with a Parameters resource

##### HTTP Header

Alternatively, a client can include a feature assertion on an HTTP header:

		GET [base]/AdverseEvent/23/_history/45
		Required-Feature: rest:server.resource:AdverseEvent.readHistory;true

The server checks the header, and return a 501 Not implemented if it does not support reading historical entries for AdverseEvent.

Clients can only expect a server to check these headers if the server declares that it does using the feature rest:server.feature-header = true.

##### Formal Definition

The code system underlying the Capability Features defines 4 kinds of concepts:

feature: a feature that a system can report about (whether it is needed or provided)
value: a possible value for a feature. Each feature has a property that defines the root
context: a concept that specifies a scope in which the feature statement applies
internal: an internal grouping code that isn't used in expressions or values
Each feature expression has the syntax

		(context[:value].)*feature

where context is a code taken from the list below. Contexts SHALL be in the correct order, as defined in the subcontext property.