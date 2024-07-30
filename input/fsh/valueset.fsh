ValueSet: CapabilityFeatureVS
Id: capability-feature-vs
Title: "Capability Feature VS"
Description: "A feature that may be declared in a capability statement"
* ^meta.lastUpdated = "2021-12-19T08:15:41.873+11:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
//* ^version = "5.0.0-snapshot1"
* ^status = #active
* ^experimental = false
// * ^date = "2020-09-21"
* ^publisher = "HL7 (FHIR Project)"
* include codes from system CapabilityFeatureCS
* include codes from system http://hl7.org/fhir/restful-interaction


ValueSet: CapabilityFeatureValueVS
Id: capability-feature-value-vs
Title: "Capability Feature Value VS"
Description: "A vaule for a feature that may be declared in a capability statement"
* ^meta.lastUpdated = "2021-12-19T08:15:41.873+11:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
// * ^version = "5.0.0-snapshot1"
* ^status = #active
* ^experimental = false
// * ^date = "2020-09-21"
* ^publisher = "HL7 (FHIR Project)"
* include codes from system CapabilityFeatureValueCS


ValueSet: ProcessingStatusVS
Id: processing-status-vs
Title: "Processing Status Value VS"
Description: "A vaule for a feature that may be declared in a capability statement"
* ^meta.lastUpdated = "2021-12-19T08:15:41.873+11:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* ^date = "2020-09-21"
* include codes from system ProcessingStatusCS