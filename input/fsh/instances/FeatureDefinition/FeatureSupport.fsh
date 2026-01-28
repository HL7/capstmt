Instance:   FeatureSupport
InstanceOf: FeatureDefinition
Description: """This feature describes support for the Application Feature Framework."""
Usage:  #definition
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">This feature is used to report conformance/support of a particular version of the Feature Framework. The value is a code which is the most recent version of the framework supported</div>"
* url = "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"
* name = "ApplicationFeatureSupport"
* description = "This feature is used to report conformance/support of a particular version of the Feature Framework. The value is a code which is the most recent version of the framework supported"
* status = #active
* valueType = #code
* contextDefinition = "Context consists of URLs that take the form or Canonica(StructureDefinition)#{element-id},
  where The structure definition is a reference to a FHIR resource - usually CapabilityStatement of TerminologyCapabilities, 
  and the element-id is a defined element within one of the resources. "
* contextExpressionLanguage = #text/url
* context[+] = "http://hl7.org/fhir/StructureDefinition/CapabilityStatement#CapabilityStatement"
