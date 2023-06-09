# Xbird::MentionEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Integer** | Index (zero-based) at which position this entity ends.  The index is exclusive. |  |
| **start** | **Integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. |  |
| **id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **username** | **String** | The Twitter handle (screen name) of this user. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::MentionEntity.new(
  _end: 61,
  start: 50,
  id: 2244994945,
  username: null
)
```

