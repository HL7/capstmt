// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: CapabilityStatement2
Parent: CapabilityStatement
Description: "An example profile of the CapabilityStatement resource."
* name 1..1 MS

Instance: CapabilityStatement2Example
InstanceOf: CapabilityStatement2
Description: "An example of a CapabilityStatement with a license to krill."
* name = "Example CapabilityStatement"
* status = #draft
* date = 2023-10-11
* kind = #instance
* fhirVersion = #4.0.1
* format[+] = #xml
* format[=] = #json
