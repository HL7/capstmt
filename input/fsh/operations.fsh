Instance: FeatureQuery
InstanceOf: OperationDefinition
Description: "This operation allows clients to query for features supported by a server."
Usage: #definition

* id = "feature-query"
// * url = "http://hl7.org/fhir/uv/application-feature/OperationDefinition/feature-query"
* name = "FeatureQuery"
* title = "Feature Query"
* status = #active
* kind = #operation
* description = "This operation allows clients to query for features supported by a server. The operation may be invoked via HTTP GET or POST. Details are on the [specification](specification.html#asking-for-features) page."
* code = #feature-query
* system = true
* type = true
* instance = false
* inputProfile = "http://hl7.org/fhir/uv/application-feature/StructureDefinition/FeatureQueryInputParameters"
* outputProfile = "http://hl7.org/fhir/uv/application-feature/StructureDefinition/FeatureQueryOutputParameters"
* parameter[0].name = #feature
* parameter[0].use = #in
* parameter[0].min = 1
* parameter[0].max = "1"
* parameter[0].documentation = "The feature that is the subject of the query"
* parameter[0].type = #Parameters
* parameter[1].name = #feature
* parameter[1].use = #out
* parameter[1].min = 0
* parameter[1].max = "1"
* parameter[1].documentation = "The answer to or any values associated with the queried feature"
* parameter[1].type = #Parameters
