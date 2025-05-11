Extension: Feature
Id: feature
Description: "This extension documents the features of a system using code/value pairs"
// * ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001* 
* ^context[0].type = #element
* ^context[=].expression = "CapabilityStatement.rest"
* extension contains
    definition 1..1 MS and
    value 1..1 MS 
* extension[definition].value[x] 1..1
* extension[definition].value[x] only Canonical(FeatureDefinition)
* extension[value].value[x] 1..1 