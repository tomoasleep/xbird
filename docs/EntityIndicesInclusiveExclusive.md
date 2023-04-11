# Xbird::EntityIndicesInclusiveExclusive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Integer** | Index (zero-based) at which position this entity ends.  The index is exclusive. |  |
| **start** | **Integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::EntityIndicesInclusiveExclusive.new(
  _end: 61,
  start: 50
)
```

