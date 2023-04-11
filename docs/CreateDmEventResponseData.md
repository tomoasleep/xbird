# Xbird::CreateDmEventResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dm_conversation_id** | **String** | Unique identifier of a DM conversation. This can either be a numeric string, or a pair of numeric strings separated by a &#39;-&#39; character in the case of one-on-one DM Conversations. |  |
| **dm_event_id** | **String** | Unique identifier of a DM Event. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::CreateDmEventResponseData.new(
  dm_conversation_id: 123123123-456456456,
  dm_event_id: 1146654567674912769
)
```

