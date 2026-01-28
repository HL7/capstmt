Logical: FeatureDefinition
Title: "Feature Definition"
Parent: CanonicalResource
Description: """
A definition of a feature that applications may implement, or be required to implement. Features are an aspect of a an  applications implementation that 
generally impacts on the handling of data received from or provided to from the application, which makes it worth declaring. Once declared,  
"""
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target1].valueBoolean = true
* valueType 1..1 code "Type of value associated with the feature" """
  Features are very boolean: true or false for whether the application implements the feature, but the value 
  associated with the feature might be a number, a string, or some kind of code
"""
* valueType from http://hl7.org/fhir/ValueSet/data-types
* valueSet 0..1 Canonical(ValueSet) "ValueSet that controls what coded value are allowed" """
  If a value set is specified, the value of the data type must come from the value set, and the 
  value type must be one of the bindeable types defined in the FHIR specification
"""
* contextDefinition 1..1 markdown "Human readable documentation describing how to interpret the context fields" """
  The contextDefinition provides human readable documentation describing how to interpret the context fields. 
"""
* contextExpressionLanguage 0..1 code "The mime type of context, if context uses an expression language" """
  The contextExpressionLanguage specifies the mime type of context, if context uses an expression language.
"""
* contextExpressionLanguage from http://hl7.org/fhir/ValueSet/mimetypes

* context 0..* string "The context(s) on which this feature can be defined" """
  The context(s) on which this feature can be defined. This is used to state where the feature applies. some
  features are defined on applications, but others apply to particular resources, or operations on resources, or particular
  code systems etc
"""
* qualifier 0..* BackboneElement "A qualifier that might provided more information about a feature implementation" """
  A qualifier is an extra piece of information that MAY or SHALL be provided when the feature is described/specified 
  that provides additional information about the feature. E.g. a feature defined on a resource may only be applicable 
  to particular events associated with the resource, or ...?
"""
  * name 1..1 code "The name of the feature"
  * description 0..1 string "A human-readable description of the qualifier."
  * valueType 1..1 code "Type of value associated with the feature" """
    Features are very boolean: true or false for whether the application implements the feature, but the value 
    associated with the feature might be a number, a string, or some kind of code
  """  
  * valueType from http://hl7.org/fhir/ValueSet/data-types
  * optional 1..1 boolean "Whether the feature is optional, or must always be present" """
    Whether the feature is optional, or must always be present when a feature is referred to 
  """
