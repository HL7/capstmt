/**************************************************************************************************************/
Profile:        FeatureQueryInputParameters
Parent:         Parameters
Title:          "Feature Query Input Parameters"
Description:    "The Parameters profile used to define the inputs of the [$feature-query](OperationDefinition-feature-query.html) operation."

* ^status = #active
* parameter 1..* MS
* parameter.name 1..1 MS
* parameter.name = "feature"
* parameter.valueCodeableConcept 1..1 MS
* parameter.valueCodeableConcept from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-vs (extensible)
* parameter.part ^slicing.discriminator.type = #pattern
* parameter.part ^slicing.discriminator.path = "name"
* parameter.part ^slicing.rules = #open
* parameter.part ^slicing.description = "Slice based on $this pattern"
* parameter.part 1..1 MS
* parameter.part contains 
	  context 1..1 MS
* parameter.part[context].name 1..1 MS
* parameter.part[context].name = "context"
* parameter.part[context].valueCode 1..1 MS
* parameter.part[context].valueCode ^short = "A FHIRPath expression showing the context of the feature in the CapabilityStatement"


/**************************************************************************************************************/
Profile:        FeatureQueryOutputParameters
Parent:         Parameters
Title:          "Feature Query Output Parameters"
Description:    "The Parameters profile used to define the outputs of the [$feature-query](OperationDefinition-feature-query.html) operation."

* ^status = #active
* parameter 1..* MS
* parameter.name 1..1 MS
* parameter.name = "feature"
* parameter.valueCodeableConcept 1..1 MS
* parameter.valueCodeableConcept from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-vs (extensible)
* parameter.part ^slicing.discriminator.type = #pattern
* parameter.part ^slicing.discriminator.path = "name"
* parameter.part ^slicing.rules = #open
* parameter.part ^slicing.description = "Slice based on $this pattern"
* parameter.part 1..* MS
* parameter.part contains 
	  context 1..1 MS and 
	  value 0..* MS
* parameter.part[context].name 1..1 MS
* parameter.part[context].name = "context"
* parameter.part[context].valueCode 1..1 MS
* parameter.part[context].valueCode ^short = "A FHIRPath expression showing the context of the feature in the CapabilityStatement"
* parameter.part[value].name 1..1 MS
* parameter.part[value].name = "value"
* parameter.part[value].value[x] 1..1 MS
* parameter.part[value].value[x] only 
	boolean or 
	CodeableConcept
* parameter.part[value].valueCodeableConcept from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-value-vs (extensible)
