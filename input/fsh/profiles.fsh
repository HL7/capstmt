
Profile: FeatureCapabilityStatement
Parent: CapabilityStatement
Title: "Feature Capability Statement"
Description: "A profile on the CapabilityStatement resource that allows for feature negotiation."
* name 0..1 MS
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* rest.extension contains Feature named feature 0..* MS
* rest.security.extension contains Feature named feature 0..* MS
* rest.resource.extension contains Feature named feature 0..* MS
* rest.resource.interaction.extension contains Feature named feature 0..* MS
* rest.resource.searchParam.extension contains Feature named feature 0..* MS
* rest.resource.operation.extension contains Feature named feature 0..* MS
* rest.interaction.extension contains Feature named feature 0..* MS
* messaging.extension contains Feature named feature 0..* MS
* document.extension contains Feature named feature 0..* MS

Instance: FeatureCapabilityStatementExample
InstanceOf: FeatureCapabilityStatement
Description: "An example of a CapabilityStatement with feature extensions"
Usage: #example
* name = "FeatureCapabilityStatementExample"
* status = #draft
* date = 2023-10-11
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* kind = #instance
* implementation.description = "Example FeatureCapabilityStatement"
* fhirVersion = #4.0.1
* format[+] = #xml
* format[=] = #json
* rest.extension[feature].extension[definition].valueCanonical = http://hl7.org/fhir/uv/application-feature/StructureDefinition/FeatureCapabilityStatement
* rest.extension[feature].extension[value].valueBoolean = true
* rest.mode = #server
