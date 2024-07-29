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
* parameter.part ^slicing.discriminator.path = "$this.name"
* parameter.part ^slicing.rules = #open
* parameter.part ^slicing.description = "Slice based on $this pattern"
* parameter.part 1..* MS
* parameter.part contains 
	  name 1..1 MS and
	  context 0..1 MS and
	  value 0..1 MS
	  
* parameter.part[name].name 1..1 MS
* parameter.part[name].name = "name"
* parameter.part[name].value[x] 1..1 MS
* parameter.part[name].value[x] only uri
* parameter.part[name].value[x] ^short = "The name of the feature. If not a core FHIR feature, must be a fully qualified URI"

* parameter.part[context].name 1..1 MS
* parameter.part[context].name = "context"
* parameter.part[context].value[x] 1..1 MS
* parameter.part[context].value[x] only string
* parameter.part[context].value[x] ^short = "An expression showing the context of the feature in the CapabilityStatement"

* parameter.part[value].name 1..1 MS
* parameter.part[value].name = "value"
* parameter.part[value].value[x] 1..1 MS
* parameter.part[value].value[x] only boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or string or positiveInt or time or unsignedInt or uri or url or uuid or Coding or CodeableConcept
* parameter.part[value].value[x] ^short = "The expected value of the feature. To query for multiple values, supply multiple parameter elements."


Instance: FeatureQueryInputParametersExample
InstanceOf: FeatureQueryInputParameters
Description: "An example input parameter"
Usage: #example
* parameter[+].name = "feature"
* parameter[=].part[name].name = "name"
* parameter[=].part[name].valueUri = #versioning
* parameter[=].part[value].name = "value"
* parameter[=].part[value].valueUri = #versioned


/**************************************************************************************************************/
Profile:        FeatureQueryOutputParameters
Parent:         Parameters
Title:          "Feature Query Output Parameters"
Description:    "The Parameters profile used to define the outputs of the [$feature-query](OperationDefinition-feature-query.html) operation."

* ^status = #active
* parameter 0..* MS
* parameter ^short = "One repetition of the parameter element per parameter element in the input Parameters resource"
* parameter.name 1..1 MS
* parameter.name = "feature"
* parameter.part ^slicing.discriminator.type = #value
* parameter.part ^slicing.discriminator.path = "$this.name"
* parameter.part ^slicing.rules = #open
* parameter.part 1..* MS
* parameter.part contains 
	  name 1..1 MS and
	  context 0..1 MS and
	  value 0..1 MS and
	  matches 0..1 MS and
	  processing-status 0..1 MS
	  
* parameter.part[name].name 1..1 MS
* parameter.part[name].name = "name"
* parameter.part[name].value[x] 1..1 MS
* parameter.part[name].value[x] only uri
* parameter.part[name].value[x] ^short = "The name of the feature. If not a core FHIR feature, must be a fully qualified URI"

* parameter.part[context].name 1..1 MS
* parameter.part[context].name = "context"
* parameter.part[context].value[x] 1..1 MS
* parameter.part[context].value[x] only string
* parameter.part[context].value[x] ^short = "An expression showing the context of the feature in the CapabilityStatement"

* parameter.part[value].name 1..1 MS
* parameter.part[value].name = "value"
* parameter.part[value].value[x] 1..1 MS
* parameter.part[value].value[x] only boolean or canonical or code or date or dateTime or decimal or id or instant or integer or markdown or oid or string or positiveInt or time or unsignedInt or uri or url or uuid or Coding or CodeableConcept
* parameter.part[value].value[x] ^short = "The expected value of the feature"

* parameter.part[matches].name 1..1 MS
* parameter.part[matches].name = "answer"
* parameter.part[matches].value[x] 1..1 MS
* parameter.part[matches].value[x] only boolean
* parameter.part[matches].value[x] ^short = "The result of the feature query if value was specified in the input parameter"

* parameter.part[processing-status].name 1..1 MS
* parameter.part[processing-status].name = "processing-status"
* parameter.part[processing-status].value[x] 1..1 MS
* parameter.part[processing-status].value[x] only code
* parameter.part[processing-status].value[x] from http://www.hl7.org/fhir/uv/application-feature/ValueSet/processing-status-vs (required)
* parameter.part[processing-status].value[x] ^short = "Indicates the processing status of the feature-query operation (all-ok, etc.)"



Instance: FeatureQueryOutputParametersExample
InstanceOf: FeatureQueryOutputParameters
Description: "An example input parameter"
Usage: #example
* parameter.name = "feature"
* parameter.part[name].name = "name"
* parameter.part[name].valueUri = #versioning
* parameter.part[value].name = "value"
* parameter.part[value].valueUri = #versioned
* parameter.part[matches].name = "answer"
* parameter.part[matches].valueBoolean = true
* parameter.part[processing-status].name = "processing-status"
* parameter.part[processing-status].valueCode = #all-ok
