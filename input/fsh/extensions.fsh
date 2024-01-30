Extension: Feature
Id: feature
Description: "This extension documents the features of a system using code/value pairs"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001* 
* ^context[0].type = #element
* ^context[=].expression = "CapabilityStatement.rest"
* extension contains
    code 1..1 MS and
    value 1..* MS
* extension[code].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-vs (extensible)
* extension[value].value[x] 1..1
* extension[value].value[x] only CodeableConcept
* extension[value].value[x] from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-value-vs (extensible)