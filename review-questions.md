# Review Questions
Orignal CapabilityStatement2 resource: https://hl7.org/fhir/5.0.0-snapshot1/capabilitystatement2.html
## 2024-01 WGM
- What should we name the profile on CapabilityStatement (currently just "CapabilityStatement2")
-- FeatureCapabilityStatement
- Should a single feature allow multiple coded return values? For example is it valid for a query for feature "foo" to return both "foo-bar" and "foo-fighter"?
- Should we include feature codes for the deprecated messaging and document paradigms?
-- Yes. Maybe don't remove them, but add feature back there. Maybe deprecate instead of prohibit. 
- Are these the actual codes we want defined in the IG for features and values? 
- Are there examples of feature/value codes that we don't want in the IG but that we could provide as examples of user defined features?
-- Define an example code system for CDS Hooks to show how to do it. 
- Should the $feature-query operation allow pointing to a CapabilityStatement other than the one at /metadata?



Add feature to interaction, etc. for context, and also pass the context back in the query

Allow multiple feature values (value 1..*)

Values should be a choice of data types (coding, codeable concept, decimal, string, uri)

Features cascade, if defined on rest.resource, it applies to all rest.resource.interaction

Add a SHOULD NOT about downloading the whole cap stat since it could be 10's of megs. In other words, you should use the $feature-query operation. 

Keep at FHIR R4, consider making it multi-version

Remove the 0..0 cardinality on versioning, readHistory, etc. even though duplicated in the feature extension. 

Mine feature requests on CapStmt2 for new codes. Also pull from here https://build.fhir.org/valueset-type-restful-interaction.html

Consider adding a new operation: give me capability statements that support feature foo. Is very complicated and really only needed for a cap stmt registry use case. An operation would be better than a search parameter, which would be very complicated. 

How do we express features in an IG, along with SHALLs, etc.? Do we have existing extensions to define conf verbs (https://www.hl7.org/fhir/R4/extension-capabilitystatement-expectation.html)? How to render it with the publisher? Will need to rewrite the rendering of cap stmt (needs an update anyway). Maybe build verbs into the feature extension, but note that it only applies to requirements cap stmts. The extension moved to the extension pack: https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-capabilitystatement-expectation.html. Also look at the CapabilityStatement-prohibited extension for SHALL NOT (https://hl7.org/fhir/extensions/StructureDefinition-capabilitystatement-prohibited.html). May need to flag it as a modifier element. 

Add documentation from here: https://hl7.org/fhir/5.0.0-snapshot1/capabilitystatement2.html#features