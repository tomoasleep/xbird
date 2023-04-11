# Xbird::MuteUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_user_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::MuteUserRequest.new(
  target_user_id: 2244994945
)
```

