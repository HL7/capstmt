/**************************************************************************************************************/
Profile:        FeatureQueryInputParameters
Parent:         Parameters
Title:          "Feature Query Input Parameters"
Description:    "The Parameters profile used to define the inputs of the [$feature-query](OperationDefinition-feature-query.html) operation."

* ^status = #active
* parameter 1..* MS
* parameter.name 1..1 MS
* parameter.name = "feature"
* parameter.part ^slicing.discriminator.type = #pattern
* parameter.part ^slicing.discriminator.path = "name"
* parameter.part ^slicing.rules = #open
* parameter.part ^slicing.description = "Slice based on $this pattern"
* parameter.part 1..* MS
* parameter.part contains 
	  name 1..1 MS and
	  context 0..1 MS and
	  value 0..* MS
	  
* parameter.part[name].name 1..1 MS
* parameter.part[name].name = "name"
* parameter.part[name].valueUri 1..1 MS
* parameter.part[name].valueUri ^short = "The name of the feature"

* parameter.part[context].name 1..1 MS
* parameter.part[context].name = "context"
* parameter.part[context].valueString 1..1 MS
* parameter.part[context].valueString ^short = "An expression showing the context of the feature in the CapabilityStatement"

* parameter.part[value].name 1..1 MS
* parameter.part[value].name = "value"
* parameter.part[value].value[x] 1..1 MS
* parameter.part[value].value[x] ^short = "The expected value of the feature"


/**************************************************************************************************************/
Profile:        FeatureQueryOutputParameters
Parent:         Parameters
Title:          "Feature Query Output Parameters"
Description:    "The Parameters profile used to define the outputs of the [$feature-query](OperationDefinition-feature-query.html) operation."

* ^status = #active
* parameter 0..* MS
* parameter.name 1..1 MS
* parameter.name = "feature"
* parameter.part ^slicing.discriminator.type = #pattern
* parameter.part ^slicing.discriminator.path = "name"
* parameter.part ^slicing.rules = #open
* parameter.part ^slicing.description = "Slice based on $this pattern"
* parameter.part 1..* MS
* parameter.part contains 
	  name 1..1 MS and
	  context 0..1 MS and
	  value 0..* MS and
	  answer 0..1 MS
	  
* parameter.part[name].name 1..1 MS
* parameter.part[name].name = "name"
* parameter.part[name].valueUri 1..1 MS
* parameter.part[name].valueUri ^short = "The name of the feature"

* parameter.part[context].name 1..1 MS
* parameter.part[context].name = "context"
* parameter.part[context].valueString 1..1 MS
* parameter.part[context].valueString ^short = "An expression showing the context of the feature in the CapabilityStatement"

* parameter.part[value].name 1..1 MS
* parameter.part[value].name = "value"
* parameter.part[value].value[x] 1..1 MS
* parameter.part[value].value[x] ^short = "The expected value of the feature"

* parameter.part[answer].name 1..1 MS
* parameter.part[answer].name = "answer"
* parameter.part[answer].valueBoolean 1..1 MS
* parameter.part[answer].valueBoolean ^short = "If a value is provided in the input parameters, indicates if the feature is present with the expected value(s)"