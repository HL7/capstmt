CodeSystem: CapabilityFeatureCS
Id: capability-feature-cs
Title: "Capability Feature CS"
Description: "A feature that may be declared in a capability statement."
* ^version = "4.0.1"
* ^status = #active
* ^date = "2023-10-11"
* ^publisher = "HL7 (FHIR Project)"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^compositional = true
* ^content = #complete
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* #features "Root concept for all feature definitions"
* #features #feature-header "Whether the server supports the Required-Feature header by which a client makes a feature as mandatory for processing a requrest properly"
* #features #security-cors
* #features #security-service
* #features #versioning
* #features #readHistory
* #features #updateCreate
* #features #updateCreate
* #features #conditionalCreate
* #features #conditionalRead
* #features #conditionalUpdate
* #features #conditionalDelete
* #features #referencePolicy
* #features #searchInclude
* #features #searchRevInclude



CodeSystem: CapabilityFeatureValueCS
Id: capability-feature-value-cs
Title: "Capability Feature Value CS"
Description: "A feature value that may be declared in a capability statement."
* ^version = "4.0.1"
* ^status = #active
* ^date = "2023-10-11"
* ^publisher = "HL7 (FHIR Project)"
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^compositional = true
* ^content = #complete
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* #values "Root concept for all feature values"
* #values #booleans "Values that are booleans"
* #values #booleans #true "Value is true"
* #values #booleans #false "Value is false"
* #values #versioning "Values for versioning feature"
* #values #versioning #no-version "No VersionId Support" "VersionId meta-property is not supported (server) or used (client)."
* #values #versioning #versioned "Versioned" "VersionId meta-property is supported (server) or used (client)."
* #values #versioning #versioned-update "VersionId tracked fully" "VersionId must be correct for updates (server) or will be specified (If-match header) for updates (client)."
* #values #conditional-read-status "Values for conditional-read-status"
* #values #conditional-read-status #cond-read-not-supported "Not Supported" "No support for conditional reads."
* #values #conditional-read-status #modified-since "If-Modified-Since" "Conditional reads are supported, but only with the If-Modified-Since HTTP Header."
* #values #conditional-read-status #not-match "If-None-Match" "Conditional reads are supported, but only with the If-None-Match HTTP Header."
* #values #conditional-read-status #full-support "Full Support" "Conditional reads are supported, with both If-Modified-Since and If-None-Match HTTP Headers."

* #values #conditional-delete-status "Values for conditional-delete-status"
* #values #conditional-delete-status #cond-delete-not-supported "Not Supported" "No support for conditional deletes."
* #values #conditional-delete-status #single "Single Deletes Supported" "Conditional deletes are supported, but only single resources at a time."
* #values #conditional-delete-status #multiple "Multiple Deletes Supported" "Conditional deletes are supported, and multiple resources can be deleted in a single interaction."
* #values #reference-handling-policy "Values for reference-handling-policy"
* #values #reference-handling-policy #literal "Literal References" "The server supports and populates Literal references (i.e. using Reference.reference) where they are known (this code does not guarantee that all references are literal; see 'enforced')."
* #values #reference-handling-policy #logical "Logical References" "The server allows logical references (i.e. using Reference.identifier)."
* #values #reference-handling-policy #resolves "Resolves References" "The server will attempt to resolve logical references to literal references - i.e. converting Reference.identifier to Reference.reference (if resolution fails, the server may still accept resources; see logical)."
* #values #reference-handling-policy #enforced "Reference Integrity Enforced" "The server enforces that references have integrity - e.g. it ensures that references can always be resolved. This is typically the case for clinical record systems, but often not the case for middleware/proxy systems."
* #values #reference-handling-policy #local "Local References Only" "The server does not support references that point to other servers."


CodeSystem: ProcessingStatusCS
Id: processing-status-cs
Title: "Processing Status Code System"
Description: "CodeSystem for feature-query processing status"
* ^caseSensitive = true
* #all-ok "All OK"
* #unknown "Unknown"
* #feature "Feature"
* #context "Context"
* #unauthorized "Unauthorized"
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false