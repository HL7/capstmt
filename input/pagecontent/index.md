### Overview

The Application Feature Framework describes a set of logical models, extensions, formats and operations that allow applications to describe how they implement their FHIR Interfaces and their related behavior, and how applications and 
system administrators can query applications about their feature set, which features are available, and how 
they can work with each other.

This implementation guide is focused on 'features' of systems.  A 'feature' is any kind of system capability, 
such as support for a type of resource, certain operation or search parameter, the ability to accept certain 
parameters to an operation, the ability to expose certain security settings, etc.

Features may be software behaviors that are directly related to FHIR based interoperability, such 
as "forces version-aware updates on resources", or they may be more general - such as "passes a
testing protocol" (potentially defined using a [[[TestScript]]] - or they may relate
to the user interface/experience, such as "the interface complies to a [named national specification]".

Features may have qualifiers that indicate in what contexts a feature applies, e.g. a feature such 
as 'supports heirarchical expansions' might be limited to some code systems, and so the feature 
is qualified by the identity of the code system.

This implementation guide defines functionality to enable these behaviors:
* Defining Features 
* Referring to Features from other resources (usually [[[CapabilityStatement]]] or [[[TerminologyCapabilities]]]), but other resources are possible)
* Declaring what features are supported (or possibly supported) by the application
* Querying a server to find out what features it supports (generally, or in a particular context)
* Marking a resource to declare that it was produced by a system with a particular feature (this is done where knowledge of the feature might alter subsequent processing in a fashion not dependent on the explicit data in the instance)

### In this IG 

* [Specification](specification.html): Contains the formal specification of the application feature framework such as defining features, querying for features, and feature negotiation.
* [Artifact Index](artifacts.html): The implementable artifacts defined in this IG such as profiles, logical models, value sets, code systems, and operation definitions.

### Relationship with CapabilityStatemnet and TerminologyCapabilities 


The backbone of the [[[CapabilityStatement]]] resource lays out which resources are supported by the system, and which API interactions, operations and search parameters are supported or required for which resources. However due to the richness of the FHIR specification, there are many features for how these general API capabilities are used in detail.

The existing CapabilityStatement could support all these features by continuing to add various boolean flags and coded elements, as has been done. But there's a couple of problems with this approach:

* The CapabilityStatement resource is too large, and getting larger. This applies to both the definition (general design) and also instances of the resources, which frequently run to many megabytes in size
* Clients are often interested in a very specific subset of these features, but the existing design doesn't support subsetting the CapabilityStatement resource, or negotiation to find out whether specific features are supported
* A lot of the things we could add to CapabilityStatement need further refinement - e.g. they might only be supported/required/etc in particular circumstances, for some subset of the possible set of resources 

Discussion on these issues led to the design of this Application Feature Framework, where the features are defined using a terminological approach that allows for more flexibility around feature negotation. Note that this approach basically mandates feature negotation, because while the design of the resource itself is simplified, the actual instances of fully populated CapabilityStatement resources are very much larger. For this reason, the general intent is that by default, servers do not populate many features in their statements unless asked, though there is still utility in a fully populated feature statement.

Most of the trial-use properties in CapabilityStatement are actually features, and they may be withdrawn in a future version of the FHIR specification once the Application Feature Framework is well-proven.

The [[[TerminologyCapabilities]]] resource servers a similar purpose as CapabilityStatement for terminology services, as such it makes sense to allow feature definitions there as well. The TerminologyCapabilities resources may also be significantly trimmed down during this process.

### Credits

* Rick Geimer, Lantana Consulting Group
* Grahame Grieve, Health Intersections
* Gino Canessa, Microsoft


