ValueSet: ProcessingStatusVS
Id: processing-status-vs
Title: "Processing Status Value VS"
Description: "The processing status of a $feature-query request"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* ^date = "2020-09-21"
* include codes from system ProcessingStatusCS


ValueSet: FavoriteColorVS
Id: favorite-color-vs
Title: "Favorite Color VS"
Description: "ValueSet for FavoriteColor Feature Example"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* ^date = "2025-10-24"
* include codes from system FavoriteColorCS