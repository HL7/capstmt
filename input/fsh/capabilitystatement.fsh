// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: CapabilityStatement2
Parent: CapabilityStatement
Description: "An example profile of the CapabilityStatement resource."
* name 0..1 MS
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* rest.extension contains Feature named feature 0..* MS
* rest.resource.versioning 0..0
* rest.resource.readHistory 0..0
* rest.resource.updateCreate 0..0
* rest.resource.conditionalCreate 0..0
* rest.resource.conditionalRead 0..0
* rest.resource.conditionalUpdate	 0..0
* rest.resource.conditionalDelete 0..0
* rest.resource.referencePolicy 0..0
* rest.resource.searchInclude 0..0
* rest.resource.searchRevInclude 0..0
* messaging 0..0
* document 0..0

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

* rest.extension[feature].extension[code].valueCodeableConcept = http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-features-cs#versioning
* rest.extension[feature].extension[value].valueCodeableConcept = http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-feature-value-cs#versioned
* rest.mode = #server