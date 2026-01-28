Instance: FeatureSupportOutputParametersExample
InstanceOf: FeatureQueryOutputParameters
Description: "An example input parameter"
Usage: #example
* parameter.name = "return"
* parameter.part[name].name = "definition"
* parameter.part[name].valueCanonical = "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"
* parameter.part[value].name = "value"
* parameter.part[value].valueCode = #1.0.0
* parameter.part[matches].name = "answer"
* parameter.part[matches].valueBoolean = true
* parameter.part[processing-status].name = "processing-status"
* parameter.part[processing-status].valueCode = #all-ok
