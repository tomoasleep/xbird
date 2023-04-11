# Xbird::Poll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_minutes** | **Integer** |  | [optional] |
| **end_datetime** | **Time** |  | [optional] |
| **id** | **String** | Unique identifier of this poll. |  |
| **options** | [**Array&lt;PollOption&gt;**](PollOption.md) |  |  |
| **voting_status** | **String** |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Poll.new(
  duration_minutes: null,
  end_datetime: null,
  id: 1365059861688410112,
  options: null,
  voting_status: null
)
```

