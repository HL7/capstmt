Instance: FeatureCapabilityStatementExample
InstanceOf: FeatureCapabilityStatement
Description: "An example of a CapabilityStatement with feature extensions"
Usage: #example
* extension[feature][+].extension[definition].valueCanonical = "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"
* extension[feature][=].extension[value].valueBoolean = true
* extension[feature][+].extension[definition].valueCanonical = "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FavoriteColor"
* extension[feature][=].extension[value].valueCode = #blue-no-yelaaaaah
* name = "FeatureCapabilityStatementExample"
* status = #draft
* date = 2023-10-11
// * jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* kind = #instance
* implementation.description = "Example FeatureCapabilityStatement"
* fhirVersion = #4.0.1
* format[+] = #xml
* format[=] = #json
* rest.mode = #server

