# Review Questions
Orignal CapabilityStatement2 resource: https://hl7.org/fhir/5.0.0-snapshot1/capabilitystatement2.html
## 2024-01 WGM
- What should we name the profile on CapabilityStatement (currently just "CapabilityStatement2")
- Should a single feature allow multiple coded return values? For example is it valid for a query for feature "foo" to return both "foo-bar" and "foo-fighter"?
- Should we include feature codes for the deprecated messaging and document paradigms?
- Are these the actual codes we want defined in the IG for features and values? 
- Are there examples of feature/value codes that we don't want in the IG but that we could provide as examples of user defined features?
- Should the $feature-query operation allow pointing to a CapabilityStatement other than the one at /metadata?

