# Xbird::CreateDmConversationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_type** | **String** | The conversation type that is being created. |  |
| **message** | [**CreateMessageRequest**](CreateMessageRequest.md) |  |  |
| **participant_ids** | **Array&lt;String&gt;** | Participants for the DM Conversation. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::CreateDmConversationRequest.new(
  conversation_type: null,
  message: null,
  participant_ids: null
)
```

