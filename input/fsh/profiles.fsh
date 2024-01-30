// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: CapabilityStatement2
Parent: CapabilityStatement
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

Instance: CapabilityStatement2Example
InstanceOf: CapabilityStatement2
Description: "An example of a CapabilityStatement with a license to krill."
Usage: #example
* name = "CapabilityStatement2Example"
* status = #draft
* date = 2023-10-11
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* kind = #instance
* implementation.description = "Example CapabilityStatement"
* fhirVersion = #4.0.1
* format[+] = #xml
* format[=] = #json

* rest.extension[feature].extension[code].valueCodeableConcept = http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-feature-cs#versioning
* rest.extension[feature].extension[value].valueCodeableConcept = http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-feature-value-cs#versioned
* rest.mode = #server