
### Features

Welcome to the FHIR Application Feature Framework.

A Feature is a software behavior that applications may choose to implement, or be required to implement,
where the existence (or not) of the behavior it describes changes the behavior of other actors in the 
ecosystem. Features may be software behaviors that are directly related to FHIR based interoperability, 
such  as "forces version-aware updates on resources", or they may be more general - such as "passes a
testing protocol" (potentially defined using a [[[TestScript]]] - or they may relate to the user interface/experience, 
such as "the interface complies to [some named national specification]".

There is no scope limitation to the kinds of features that might be described, but the intent of this
features framework is to describe software behaviors that affect participants in the ecosystem of 
FHIR exchange.

#### Defining Features 

Features are defined using [FeatureDefinitions](StructureDefinition-FeatureDefinition.html). This is a 
logical structure that looks a lot like a FHIR resource (and may become one in a future version of the 
FHIR specification). The important parts of the FeatureDefintion are:

* The URL, which defines the Feature 
* The type of the value - the type that appears when the Feature is used in practice. Most Features have values that are boolean (yes/no) or simple codes, but more complex types are possible
* A list of contexts - where in a resource they might be found. Most Features will appear in either the [[[CapabilityStatement]]] or [[[TerminologyCapabilities]]] resources, but other resources are allowed
* A list of qualifiers that might be provided, and whether they must be provided for the feature to have meaning (not that non-optional features might still be omitted in queries, but can't be omitted when declaring a specific feature)

```json
{
  "resourceType" : "FeatureDefinition",
  "id" : "FeatureSupport",
  "url" : "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport",
  "name" : "ApplicationFeatureSupport",
  "status" : "active",
  "description" : "This feature is used to report conformance/support of a particular version of the Feature Framework. The value is a code which is the most recent version of the framework supported",
  "valueType" : "code",
  "context" : [
    🔗 "http://hl7.org/fhir/StructureDefinition/CapabilityStatement#CapabilityStatement"
  ]
}
```

and in xml

```xml
<FeatureDefinition xmlns="http://hl7.org/fhir">
  <id value="FeatureSupport"/>
  <url
       value="http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"/>
  <name value="ApplicationFeatureSupport"/>
  <status value="active"/>
  <description
               value="This feature is used to report conformance/support of a particular version of the Feature Framework. The value is a code which is the most recent version of the framework supported"/>
  <valueType value="code"/>
  <context
           value="http://hl7.org/fhir/StructureDefinition/CapabilityStatement#CapabilityStatement"/>
</FeatureDefinition>
```

#### Features Defined in this Specification

The Application Feature Framework only defines one actual feature: [FeatureSupport](FeatureDefinition-FeatureSupport.html), which declares the most recent version of the feature framework that the application 
supports. This feature is used by applications to declare that they support the application feature framework at the root of their capability statement. 

Note that applications can implement some of all of this specification without declaring that they support the application feature framework, but if they 
do declare that it is supported, they SHALL support the following functionality:

* todo....

#### Declaring Features

Features are declared in an extension. Each Feature is a pair: a code that identifies of which features is being described, and a value for that feature.

```json
  "extension" : [{
	"url" : "http://hl7.org/fhir/uv/application-feature/StructureDefinition/feature",
    "extension" : [{
	  "url" : "definition",
      "valueCanonical" : "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"
	},{
  	  "url" : "value",
	  "valueCode" : "[[[$ver]]]"
	}]
  }]
```

or in xml:

```xml
  <extension url="http://hl7.org/fhir/uv/application-feature/StructureDefinition/feature">
    <extension url="definition">
      <valueCanonical value="http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"/>
	</extension>
	<extension url="value">
	  <valueCode value="[[[$ver]]]"/>
	</extension>
  </extension>
```

The feature extension can appear in any resource, on any element, but in practice, it's only allowed 
to appear on the element contexts allowed in the Feature Definition. For example, the feature definition
for [[[http://hl7.org/fhir/uv/application-feature/StructureDefinition/feature]]] says that it appears 
on the root element of the [[[CapabilityStatement]]] resource (```http://hl7.org/fhir/StructureDefinition/CapabilityStatement#CapabilityStatement```):

```json
{ 
  "resourceType" : "CapabilityStatement",
  "id" : "something",
  "extension" : [{
	"url" : "http://hl7.org/fhir/uv/application-feature/StructureDefinition/feature",
    "extension" : [{
	  "url" : "definition",
      "valueCanonical" : "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"
	},{
  	  "url" : "value",
	  "valueCode" : "[[[$ver]]]"
	}]
  }]
```

or in xml:

```xml
<CapabilityStatement xmlns="http://hl7.org/fhir">
  <id value="something"/>
  <extension url="http://hl7.org/fhir/uv/application-feature/StructureDefinition/feature">
    <extension url="definition">
      <valueCanonical value="http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"/>
	</extension>
	<extension url="value">
	  <valueCode value="[[[$ver]]]"/>
	</extension>
  </extension>
</CapabilityStatement>
```

Features defined inside the capability statement automatically have an implied scope, but are otherwise the same statement.

Here is an example of a feature defined for all resources available via REST:

```xml
<CapabilityStatement xmlns="http://hl7.org/fhir">
  <rest>
    <extension url="http://hl7.org/fhir/uv/application-feature/StructureDefinition/feature">
      <extension url="code">
        <valueCanonical value="http://hl7.org/fhir/uv/application-feature/CodeSystem/feature-versioning"/>
      </extension>
      <extension url="value">
        <valueCode value="versioned-update"/>
      </extension>
    </extension>
  </rest>
</CapabilityStatement>
```
		
Here is the same feature only defined on CodeSystem:
  

```xml  
<CapabilityStatement xmlns="http://hl7.org/fhir">
  <rest>
    <resource>
      <type value="CodeSystem"/>
	  <extension url="http://hl7.org/fhir/uv/application-feature/StructureDefinition/feature">
		<extension url="code">
		  <valueCanonical value="http://hl7.org/fhir/uv/application-feature/CodeSystem/feature-versioning"/>
		</extension>    
		<extension url="value">
		  <valueCode value="versioned-update"/>
	    </extension>
	  </extension>
    </resource>
  </rest>
</CapabilityStatement>
```

Note, however, that the feature scopes are not restricted to the contexts implied by the structure of the FeatureCapabilityStatement profile. Feature contexts are defined for features that are deeper into the system than those defined by the FeatureCapabilityStatement profile.

#### Asking for features in a CapabilityStatement 

In general, default CapabilityStatements returned from the ```/metadata``` endpoint do not include 
Feature assertions (other then possibly the FeatureFramework Feature itself), though specific features or 
other implementation guides may require that features are populated in the CapabilityStatement by default.
For other CapabilityStatements - e.g. those produced to store in registries as static copies, it is at the
discretion of the application to decide how much to populate the CapabilityStatement with the applicable 
features.

When an application fetches 

----- 

up to here....

------

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

##### Identifying a Feature

Features are identified by an expression that includes the scope in which the feature is being asserted. Here's some examples:

* feature-query?param=updateCreate(true) - the server supports updateCreate on the update interaction for all resources
* feature-query?param=searchInclude@CodeSystem(supplements) - the server supports _include=CodeSystem.supplements
* feature-query?param=security.cors(false) - the server doesn't support CORS
* feature-query?param=security.cors(true) - the client requires a server that supports CORS

The full details of the expression format are described below.

Clients interacting with a FHIR server that supports this implementation guide SHOULD NOT download entire CapabilityStatement resources, since they may be many megabytes in size. Clients should instead use the [FeatureQuery](OperationDefinition-feature-query.html) operation or the [Required-Features](#featuires-query-using-the-required-features-http-header) HTTP header to determine if the server supports needed features. 

#### Asking for Features

Clients can query servers about the features they support using the [FeatureQuery](OperationDefinition-feature-query.html) operation. 

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


By default, when a client asks a server for it's capability statement using /metadata, which features to report on is at the discretion of the server. Typically, servers will not report any features by default. Features can be queried via the  [FeatureQuery](OperationDefinition-feature-query.html) operation using an HTTP GET or POST, or via an HTTP header.

##### Features Query using HTTP GET

Clients can request that a server by using GET as follows:

		GET [base]/feature-query?feature[@context](value)

For example, here is how you would ask if the Patient resource has read access:

		GET [base]/feature-query?param=read@Patient(true)

Requesting multiple features:

		GET [base]/feature-query?param=read@Patient(true)&param=update@Patient(true)

##### Feature Query using HTTP POST

TBD: add example in/out params and explain invoking them in a POST

##### Featuires Query using the Required-Features HTTP Header

Alternatively, a client can include a feature assertion on an HTTP header:

		GET [base]/Patient/23/_history/45
		Required-Features: param=read@Patient(true)

The server checks the header, and return a 501 Not implemented if it does not support reading historical entries for Patient.

Clients can only expect a server to check these headers if the server declares that it does using the feature rest:server.feature-header = true.

