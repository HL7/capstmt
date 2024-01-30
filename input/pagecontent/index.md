# CapabilityStatementIG

CapabilityStatement is the largest/most complex of the infrastructure resources, yet there continues to be pressure to add yet more capabilities to describe additional nuances of how systems behave (or are desired to behave). 

As well, the things people want to say about systems often covers concepts that are outside FHIR proper (e.g. CDS Hooks, SMART) or even outside HL7. 

In the lead-up to R5 we created a draft update to the CapabilityStatement resource called CapabilityStatement2 that proposed a terminology-based approach to managing new assertions around system capabilities. However, there was not sufficient bandwidth to get implementation testing to happen prior to R5 publication, so we opted instead to move the work into this implementation guide.