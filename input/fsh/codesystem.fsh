
CodeSystem: ProcessingStatusCS
Id: processing-status-cs
Title: "Processing Status Code System"
Description: "CodeSystem for feature-query processing status"
* ^caseSensitive = true
* #all-ok "All OK" "Processing completed successfully"
* #unknown "Unknown" "Processing status is unknown"
* #feature "Feature" "Processing failed because no feature was specified in the request" 
* #context "Context" "Processing failed because no context was specified and context was required for the request"
* #unauthorized "Unauthorized" "Processing failed because the authorization was required and failed"
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false


CodeSystem: FavoriteColorCS
Id: favorit-color-cs
Title: "Favorite Color Example Code System"
Description: "CodeSystem for FavoriteColor Feature Example"
* ^caseSensitive = true
* #blue "Blue" "Blue"
* #yellow "Yellow" "Yellow"
* #blue-no-yelaaaaah "Blue, no YelAAAAAAH!" "Said blue instead of yellow and was tossed from the Bridge of Death "
* ^copyright = "This CodeSystem is not copyrighted."
* ^experimental = false