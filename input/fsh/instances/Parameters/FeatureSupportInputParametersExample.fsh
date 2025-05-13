Instance: FeatureSupportInputParametersExample
InstanceOf: FeatureQueryInputParameters
Description: "An example input parameter"
Usage: #example
* parameter[+].name = "feature"
* parameter[=].part[name].name = "definition"
* parameter[=].part[name].valueCanonical = "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"
* parameter[=].part[value].name = "value"
* parameter[=].part[value].valueCode = #1.0.0