
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

##### Representing Features in a CapabilityStatement

The CapabilityStatement can include features either on the base of the statement, or on the elements inside the resource. Features defined inside the capability statement automatically have an implied scope, but are otherwise the same statement.

Here is an example of a feature defined for all resources available via REST:

		<CapabilityStatement xmlns="http://hl7.org/fhir">
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
		</CapabilityStatement>
		
		
Here is the same feature only defined on CodeSystem:
  
		<CapabilityStatement xmlns="http://hl7.org/fhir">
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
		</CapabilityStatement>
		

Note, however, that the feature scopes are not restricted to the contexts implied by the structure of the FeatureCapabilityStatement profile. Feature contexts are defined for features that are deeper into the system than those defined by the FeatureCapabilityStatement profile.

#### Asking for features in a CapabilityStatement 

General Patterns

* feature alone: returns list of values on the server (can refuse - see processing-status)
* feature + context: returns list of values in that context on the server
* feature + value: returns answer of true/false if all contexts match the supplied value
* feature + context + value: returns answer of true/false if the supplied context matches the supplied value

Responses

* feature: 'feature' literal (one repetition per request feature param)
* name: name of the feature (uri)
* context: present if provided, used to match responses to requests (uri)
* processing-status: code from the server about processing the request (e.g., all-ok, not-supported, etc.)
* value:
  * if provided in input: the value requested (datatype as defined by the feature) (even if processing fails)
  * if not provided: the value of the feature (can have multiple repetitions) (uses datatype of feature)
* answer:
  * only present if processing was successful (all-ok)
  * if a value is provided, does the supplied value match the server feature-supported value
  * if a value is not provided, does not exist


By default, when a client asks a server for it's capability statement using /metadata, which features to report on is at the discretion of the server. Typically, servers will not report any features by default. Features can be queried by search parameter or via an operation.

##### Feature Parameter

Clients can request that a server by using the feature parameter, which represents a query for information about a particular feature:

		GET [base]/feature-query?feature[@context](value)

For example, here is how you would ask if the Patient resource has read access:

		GET [base]/feature-query?param=read@Patient(true)

Other examples of query mode usage:


##### Feature Query operation

TBD

#### Feature Negotiation

In addition to querying for a capability statement, clients can do negotation. There are 2 different approaches that are supported: an operation, and an HTTP header.

##### HTTP Header

Alternatively, a client can include a feature assertion on an HTTP header:

		GET [base]/Patient/23/_history/45
		Required-Features: param=read@Patient(true)

The server checks the header, and return a 501 Not implemented if it does not support reading historical entries for AdverseEvent.

Clients can only expect a server to check these headers if the server declares that it does using the feature rest:server.feature-header = true.

