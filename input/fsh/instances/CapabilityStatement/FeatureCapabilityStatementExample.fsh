Instance: FeatureCapabilityStatementExample
InstanceOf: FeatureCapabilityStatement
Description: "An example of a CapabilityStatement with feature extensions"
Usage: #example
* name = "FeatureCapabilityStatementExample"
* status = #draft
* date = 2023-10-11
// * jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* kind = #instance
* implementation.description = "Example FeatureCapabilityStatement"
* fhirVersion = #4.0.1
* format[+] = #xml
* format[=] = #json
* rest.extension[feature].extension[definition].valueCanonical = "http://hl7.org/fhir/uv/application-feature/StructureDefinition/FeatureDefinition"
* rest.extension[feature].extension[value].valueBoolean = true
* rest.mode = #server
