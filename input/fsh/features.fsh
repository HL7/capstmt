Instance:   FeatureSupport
InstanceOf: FeatureDefinition
Description: """This feature describes support for the Application Feature Framework."""
Usage:  #example
* url = "http://hl7.org/fhir/uv/application-feature/FeatureDefinition/FeatureSupport"
* name = "ApplicationFeatureSupport"
* description = "This feature is used to report conformance/support of a particular version of the Feature Framework. The value is a code which is the most recent version of the framework supported"
* status = #active
* valueType = #code
* context[+] = "http://hl7.org/fhir/StructureDefinition/CapabilityStatement#CapabilityStatement"
