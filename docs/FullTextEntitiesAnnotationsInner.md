# Xbird::FullTextEntitiesAnnotationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Integer** | Index (zero-based) at which position this entity ends.  The index is inclusive. |  |
| **start** | **Integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. |  |
| **normalized_text** | **String** | Text used to determine annotation. | [optional] |
| **probability** | **Float** | Confidence factor for annotation type. | [optional] |
| **type** | **String** | Annotation type. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::FullTextEntitiesAnnotationsInner.new(
  _end: 61,
  start: 50,
  normalized_text: Barack Obama,
  probability: null,
  type: Person
)
```

