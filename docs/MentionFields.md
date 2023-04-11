# Xbird::MentionFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **username** | **String** | The Twitter handle (screen name) of this user. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::MentionFields.new(
  id: 2244994945,
  username: null
)
```

