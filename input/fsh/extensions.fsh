Extension: Feature
Id: feature
Description: "This extension documents the features of a system using code/value pairs"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001* 
* ^context[0].type = #element
* ^context[=].expression = "CapabilityStatement.rest"
* extension contains
    code 1..1 MS and
	context 0..* MS and
    value 1..* MS
* extension[code].value[x] 1..1
* extension[code].value[x] only CodeableConcept
* extension[code].value[x] from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-vs (extensible)
* extension[context].value[x] 1..1
* extension[context].value[x] only string
* extension[context].value[x] ^short = "The context of the feature, if not implied by the extension's location in the CapabilityStatement"
* extension[value].value[x] 1..1
* extension[value].value[x] only CodeableConcept or string or boolean
* extension[value].valueCodeableConcept from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-value-vs (extensible)