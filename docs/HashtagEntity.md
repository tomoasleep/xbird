# Xbird::HashtagEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Integer** | Index (zero-based) at which position this entity ends.  The index is exclusive. |  |
| **start** | **Integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. |  |
| **tag** | **String** | The text of the Hashtag. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::HashtagEntity.new(
  _end: 61,
  start: 50,
  tag: MondayMotivation
)
```

