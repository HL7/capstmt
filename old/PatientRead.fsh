Instance:   PatientRead
InstanceOf: FeatureDefinition
Description: """This feature describes support for the Application Feature Framework."""
Usage:  #example
* url = "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/PatientRead"
* name = "PatientRead"
* description = "This feature is used to determine if the application supports the read operation on the Patient resource"
* status = #active
* valueType = #boolean
* contextDefinition = "Context consists of URLs that take the form or Canonica(StructureDefinition)#{element-id},
  where The structure definition is a reference to a FHIR resource - usually CapabilityStatement of TerminologyCapabilities, 
  and the element-id is a defined element within one of the resources. "
* contextExpressionLanguage = #text/url
* context[+] = "http://hl7.org/fhir/StructureDefinition/Patient#Patient"
* qualifier[+].name = #read
* qualifier[=].valueType = #boolean
* qualifier[=].optional = false

