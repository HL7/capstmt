Extension: Feature
Id: feature
Description: "This extension documents the features of a system using code/value pairs"
// * ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001* 
* ^context[+].type = #element
* ^context[=].expression = "CapabilityStatement"
* ^context[+].type = #element
* ^context[=].expression = "TerminologyCapabilities"
* extension contains
    definition 1..1 MS and
	context 0..* MS and
    value 1..1 MS 
* extension[definition].value[x] 1..1
* extension[definition].value[x] only Canonical(FeatureDefinition)
* extension[context].value[x] 1..1 
* extension[context].value[x] only string
* extension[context].value[x] ^short = "The context(s) on which this feature can be defined. The context(s) declared in this extension must align with one or more of the contexts in the FeatureDefinition."
* extension[value].value[x] 1..1  
* extension[value].value[x] ^short = "The value of the feature. Must align with the type and ValueSet (if a code type) in the FeatureDefinition." 

// """ Unclear how this relates to the fields in FeatureDefinition. Does this need to match FeatureDefinition.valueType? Is so it is redundant. If not, then what is this for? Qualifiers? """