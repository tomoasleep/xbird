# Xbird::CashtagEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Integer** | Index (zero-based) at which position this entity ends.  The index is exclusive. |  |
| **start** | **Integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. |  |
| **tag** | **String** |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::CashtagEntity.new(
  _end: 61,
  start: 50,
  tag: TWTR
)
```

