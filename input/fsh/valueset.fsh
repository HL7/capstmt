ValueSet: CapabilityFeature
Id: capability-feature
Title: "Capability Features"
Description: "A feature that may be declared in a capability statement"
* ^meta.lastUpdated = "2021-12-19T08:15:41.873+11:00"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 0
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.3.0"
* ^version = "5.0.0-snapshot1"
* ^status = #active
* ^experimental = true
* ^date = "2020-09-21"
* ^publisher = "HL7 (FHIR Project)"
* include codes from system http://www.hl7.org/fhir/uv/capstmt/CodeSystem/capability-features where kind = "feature"