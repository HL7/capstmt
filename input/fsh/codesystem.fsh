CodeSystem: CapabilityFeaturesCS
Id: capability-features-cs
Title: "Capability Features"
Description: "A feature that may be declared in a capability statement. For discussion, see [[[CapabilityStatement2]]] Notes"
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
* #features ^property[0].code = #kind
* #features ^property[=].valueCode = #internal
* #features #feature-header "Whether the server supports the Required-Feature header by which a client makes a feature as mandatory for processing a requrest properly"
* #features #feature-header ^property[+].code = #kind
* #features #feature-header ^property[=].valueCode = #feature
* #features #feature-header ^property[+].code = #context
* #features #feature-header ^property[=].valueCode = #rest
* #features #feature-header ^property[+].code = #values
* #features #feature-header ^property[=].valueCode = ##booleans
* #features #security-cors
* #features #security-cors ^property[0].code = #kind
* #features #security-cors ^property[=].valueCode = #feature
* #features #security-cors ^property[+].code = #context
* #features #security-cors ^property[=].valueCode = #rest
* #features #security-cors ^property[+].code = #values
* #features #security-cors ^property[=].valueCode = ##booleans
* #features #security-service
* #features #security-service ^property[0].code = #kind
* #features #security-service ^property[=].valueCode = #feature
* #features #security-service ^property[+].code = #context
* #features #security-service ^property[=].valueCode = #rest
* #features #security-service ^property[+].code = #values
* #features #security-service ^property[=].valueCode = #http://hl7.org/fhir/ValueSet/restful-security-service
* #features #versioning
* #features #versioning ^property[0].code = #kind
* #features #versioning ^property[=].valueCode = #feature
* #features #versioning ^property[+].code = #context
* #features #versioning ^property[=].valueCode = #rest.resource
* #features #versioning ^property[+].code = #values
* #features #versioning ^property[=].valueCode = ##versioning
* #features #readHistory
* #features #readHistory ^property[0].code = #kind
* #features #readHistory ^property[=].valueCode = #feature
* #features #readHistory ^property[+].code = #context
* #features #readHistory ^property[=].valueCode = #rest.resource
* #features #readHistory ^property[+].code = #values
* #features #readHistory ^property[=].valueCode = ##booleans
* #features #updateCreate
* #features #updateCreate ^property[0].code = #kind
* #features #updateCreate ^property[=].valueCode = #feature
* #features #updateCreate ^property[+].code = #context
* #features #updateCreate ^property[=].valueCode = #rest.resource
* #features #updateCreate ^property[+].code = #values
* #features #updateCreate ^property[=].valueCode = ##booleans
* #features #updateCreate
* #features #updateCreate ^property[0].code = #kind
* #features #updateCreate ^property[=].valueCode = #feature
* #features #updateCreate ^property[+].code = #context
* #features #updateCreate ^property[=].valueCode = #rest.resource
* #features #updateCreate ^property[+].code = #values
* #features #updateCreate ^property[=].valueCode = ##booleans
* #features #conditionalCreate
* #features #conditionalCreate ^property[0].code = #kind
* #features #conditionalCreate ^property[=].valueCode = #feature
* #features #conditionalCreate ^property[+].code = #context
* #features #conditionalCreate ^property[=].valueCode = #rest.resource
* #features #conditionalCreate ^property[+].code = #values
* #features #conditionalCreate ^property[=].valueCode = ##booleans
* #features #conditionalRead
* #features #conditionalRead ^property[0].code = #kind
* #features #conditionalRead ^property[=].valueCode = #feature
* #features #conditionalRead ^property[+].code = #context
* #features #conditionalRead ^property[=].valueCode = #rest.resource
* #features #conditionalRead ^property[+].code = #values
* #features #conditionalRead ^property[=].valueCode = ##conditional-read-status
* #features #conditionalUpdate
* #features #conditionalUpdate ^property[0].code = #kind
* #features #conditionalUpdate ^property[=].valueCode = #feature
* #features #conditionalUpdate ^property[+].code = #context
* #features #conditionalUpdate ^property[=].valueCode = #rest.resource
* #features #conditionalUpdate ^property[+].code = #values
* #features #conditionalUpdate ^property[=].valueCode = ##booleans
* #features #conditionalDelete
* #features #conditionalDelete ^property[0].code = #kind
* #features #conditionalDelete ^property[=].valueCode = #feature
* #features #conditionalDelete ^property[+].code = #context
* #features #conditionalDelete ^property[=].valueCode = #rest.resource
* #features #conditionalDelete ^property[+].code = #values
* #features #conditionalDelete ^property[=].valueCode = ##conditional-delete-status
* #features #referencePolicy
* #features #referencePolicy ^property[0].code = #kind
* #features #referencePolicy ^property[=].valueCode = #feature
* #features #referencePolicy ^property[+].code = #context
* #features #referencePolicy ^property[=].valueCode = #rest.resource
* #features #referencePolicy ^property[+].code = #values
* #features #referencePolicy ^property[=].valueCode = ##reference-handling-policy
* #features #searchInclude
* #features #searchInclude ^property[0].code = #kind
* #features #searchInclude ^property[=].valueCode = #feature
* #features #searchInclude ^property[+].code = #context
* #features #searchInclude ^property[=].valueCode = #rest.resource
* #features #searchInclude ^property[+].code = #values
* #features #searchInclude ^property[=].valueCode = #http://hl7.org/fhir/ValueSet/search-parameters
* #features #searchRevInclude
* #features #searchRevInclude ^property[0].code = #kind
* #features #searchRevInclude ^property[=].valueCode = #feature
* #features #searchRevInclude ^property[+].code = #context
* #features #searchRevInclude ^property[=].valueCode = #rest.resource
* #features #searchRevInclude ^property[+].code = #values
* #features #searchRevInclude ^property[=].valueCode = #http://hl7.org/fhir/ValueSet/search-parameters



CodeSystem: CapabilityFeatureValuesCS
Id: capability-feature-value-cs
Title: "Capability Feature Values"
Description: "A feature value that may be declared in a capability statement. For discussion, see [[[CapabilityStatement2]]] Notes"
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
* #values ^property[0].code = #kind
* #values ^property[=].valueCode = #internal
* #values #booleans "Values that are booleans"
* #values #booleans ^property[+].code = #kind
* #values #booleans ^property[=].valueCode = #internal
* #values #booleans #true "Value is true"
* #values #booleans #true ^property[+].code = #kind
* #values #booleans #true ^property[=].valueCode = #value
* #values #booleans #false "Value is false"
* #values #booleans #false ^property[+].code = #kind
* #values #booleans #false ^property[=].valueCode = #value
* #values #versioning "Values for versioning feature"
* #values #versioning ^property[+].code = #kind
* #values #versioning ^property[=].valueCode = #internal
* #values #versioning #no-version "No VersionId Support" "VersionId meta-property is not supported (server) or used (client)."
* #values #versioning #no-version ^property[+].code = #kind
* #values #versioning #no-version ^property[=].valueCode = #value
* #values #versioning #versioned "Versioned" "VersionId meta-property is supported (server) or used (client)."
* #values #versioning #versioned ^property[+].code = #kind
* #values #versioning #versioned ^property[=].valueCode = #value
* #values #versioning #versioned-update "VersionId tracked fully" "VersionId must be correct for updates (server) or will be specified (If-match header) for updates (client)."
* #values #versioning #versioned-update ^property[+].code = #kind
* #values #versioning #versioned-update ^property[=].valueCode = #value
* #values #conditional-read-status "Values for conditional-read-status"
* #values #conditional-read-status ^property[+].code = #kind
* #values #conditional-read-status ^property[=].valueCode = #internal
* #values #conditional-read-status #cond-read-not-supported "Not Supported" "No support for conditional reads."
* #values #conditional-read-status #cond-read-not-supported ^property[+].code = #kind
* #values #conditional-read-status #cond-read-not-supported ^property[=].valueCode = #value
* #values #conditional-read-status #modified-since "If-Modified-Since" "Conditional reads are supported, but only with the If-Modified-Since HTTP Header."
* #values #conditional-read-status #modified-since ^property[+].code = #kind
* #values #conditional-read-status #modified-since ^property[=].valueCode = #value
* #values #conditional-read-status #not-match "If-None-Match" "Conditional reads are supported, but only with the If-None-Match HTTP Header."
* #values #conditional-read-status #not-match ^property[+].code = #kind
* #values #conditional-read-status #not-match ^property[=].valueCode = #value
* #values #conditional-read-status #full-support "Full Support" "Conditional reads are supported, with both If-Modified-Since and If-None-Match HTTP Headers."
* #values #conditional-read-status #full-support ^property[+].code = #kind
* #values #conditional-read-status #full-support ^property[=].valueCode = #value

* #values #conditional-delete-status "Values for conditional-delete-status"
* #values #conditional-delete-status ^property[+].code = #kind
* #values #conditional-delete-status ^property[=].valueCode = #internal
* #values #conditional-delete-status #cond-delete-not-supported "Not Supported" "No support for conditional deletes."
* #values #conditional-delete-status #cond-delete-not-supported ^property[+].code = #kind
* #values #conditional-delete-status #cond-delete-not-supported ^property[=].valueCode = #value
* #values #conditional-delete-status #single "Single Deletes Supported" "Conditional deletes are supported, but only single resources at a time."
* #values #conditional-delete-status #single ^property[+].code = #kind
* #values #conditional-delete-status #single ^property[=].valueCode = #value
* #values #conditional-delete-status #multiple "Multiple Deletes Supported" "Conditional deletes are supported, and multiple resources can be deleted in a single interaction."
* #values #conditional-delete-status #multiple ^property[+].code = #kind
* #values #conditional-delete-status #multiple ^property[=].valueCode = #value
* #values #reference-handling-policy "Values for reference-handling-policy"
* #values #reference-handling-policy ^property[+].code = #kind
* #values #reference-handling-policy ^property[=].valueCode = #internal
* #values #reference-handling-policy #literal "Literal References" "The server supports and populates Literal references (i.e. using Reference.reference) where they are known (this code does not guarantee that all references are literal; see 'enforced')."
* #values #reference-handling-policy #literal ^property[+].code = #kind
* #values #reference-handling-policy #literal ^property[=].valueCode = #value
* #values #reference-handling-policy #logical "Logical References" "The server allows logical references (i.e. using Reference.identifier)."
* #values #reference-handling-policy #logical ^property[+].code = #kind
* #values #reference-handling-policy #logical ^property[=].valueCode = #value
* #values #reference-handling-policy #resolves "Resolves References" "The server will attempt to resolve logical references to literal references - i.e. converting Reference.identifier to Reference.reference (if resolution fails, the server may still accept resources; see logical)."
* #values #reference-handling-policy #resolves ^property[+].code = #kind
* #values #reference-handling-policy #resolves ^property[=].valueCode = #value
* #values #reference-handling-policy #enforced "Reference Integrity Enforced" "The server enforces that references have integrity - e.g. it ensures that references can always be resolved. This is typically the case for clinical record systems, but often not the case for middleware/proxy systems."
* #values #reference-handling-policy #enforced ^property[+].code = #kind
* #values #reference-handling-policy #enforced ^property[=].valueCode = #value
* #values #reference-handling-policy #local "Local References Only" "The server does not support references that point to other servers."
* #values #reference-handling-policy #local ^property[+].code = #kind
* #values #reference-handling-policy #local ^property[=].valueCode = #value


CodeSystem: CapabilityContextCS
Id: capability-context-cs
Title: "Capability Context"
Description: "A context that may be declared in a capability statement. For discussion, see [[[CapabilityStatement2]]] Notes"
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
* #contexts "Root concept for all context definitions"
* #contexts ^property[+].code = #kind
* #contexts ^property[=].valueCode = #internal
* #contexts #rest "The REST API as a whole"
* #contexts #rest ^property[+].code = #kind
* #contexts #rest ^property[=].valueCode = #context
* #contexts #rest ^property[+].code = #qualification
* #contexts #rest ^property[=].valueCode = #server|client
* #contexts #resource "Support for a resource on the REST API"
* #contexts #resource ^property[0].code = #kind
* #contexts #resource ^property[=].valueCode = #context
* #contexts #resource ^property[+].code = #qualification
* #contexts #resource ^property[=].valueCode = #"resource type"
* #contexts #resource ^property[+].code = #scope
* #contexts #resource ^property[=].valueCode = #rest
* #contexts #interaction "Support for a interaction (not on a resource) on the REST API"
* #contexts #interaction ^property[0].code = #kind
* #contexts #interaction ^property[=].valueCode = #context
* #contexts #interaction ^property[+].code = #qualification
* #contexts #interaction ^property[=].valueCode = #interaction.code
* #contexts #interaction ^property[+].code = #scope
* #contexts #interaction ^property[=].valueCode = #rest
* #contexts #interaction ^property[+].code = #scope
* #contexts #interaction ^property[=].valueCode = #resource
* #contexts #searchParam "Support for a search parameter across resources on the REST API"
* #contexts #searchParam ^property[0].code = #kind
* #contexts #searchParam ^property[=].valueCode = #context
* #contexts #searchParam ^property[+].code = #qualification
* #contexts #searchParam ^property[=].valueCode = #searchparam.code
* #contexts #searchParam ^property[+].code = #scope
* #contexts #searchParam ^property[=].valueCode = #rest
* #contexts #searchParam ^property[+].code = #scope
* #contexts #searchParam ^property[=].valueCode = #resource
* #contexts #operation "Support for a operation not on a resource on the REST API"
* #contexts #operation ^property[0].code = #kind
* #contexts #operation ^property[=].valueCode = #context
* #contexts #operation ^property[+].code = #qualification
* #contexts #operation ^property[=].valueCode = #operation.name
* #contexts #operation ^property[+].code = #scope
* #contexts #operation ^property[=].valueCode = #rest
* #contexts #operation ^property[+].code = #scope
* #contexts #operation ^property[=].valueCode = #resource
* #contexts #compartment "Support for a compartment on the REST API"
* #contexts #compartment ^property[0].code = #kind
* #contexts #compartment ^property[=].valueCode = #context
* #contexts #compartment ^property[+].code = #qualification
* #contexts #compartment ^property[=].valueCode = #compartment.code
* #contexts #compartment ^property[+].code = #scope
* #contexts #compartment ^property[=].valueCode = #rest