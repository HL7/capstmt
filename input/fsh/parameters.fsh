/**************************************************************************************************************/
Profile:        FeatureQueryInputParameters
Parent:         Parameters
Id:             feature-query-input-parameters
Title:          "Feature Query Input Parameters"
Description:    "The Parameters profile used to define the inputs of the [$feature-query](OperationDefinition-feature-query.html) operation."

* ^status = #active
* parameter 1..* MS
* parameter.name 1..1 MS
* parameter.name = "feature"
* parameter.valueCodeableConcept 1..1 MS
* parameter.valueCodeableConcept from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-vs (extensible)


/**************************************************************************************************************/
Profile:        FeatureQueryOutputParameters
Parent:         Parameters
Id:             feature-query-output-parameters
Title:          "Feature Query Output Parameters"
Description:    "The Parameters profile used to define the outputs of the [$feature-query](OperationDefinition-feature-query.html) operation."

* ^status = #active
* parameter 1..* MS
* parameter.name 1..1 MS
* parameter.name = "feature"
* parameter.valueCodeableConcept 1..1 MS
* parameter.valueCodeableConcept from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-vs (extensible)
* parameter.part 0..1 MS
* parameter.part.name 1..1 MS
* parameter.part.name = "value"
* parameter.part.value[x] 0..1 MS
* parameter.part.value[x] only http://hl7.org/fhir/StructureDefinition/boolean or http://hl7.org/fhir/StructureDefinition/CodeableConcept
* parameter.part.valueCodeableConcept from http://www.hl7.org/fhir/uv/capstmt/ValueSet/capability-feature-value-vs (extensible)
