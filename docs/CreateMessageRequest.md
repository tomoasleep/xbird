# Xbird::CreateMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**Array&lt;DmMediaAttachment&gt;**](DmMediaAttachment.md) | Attachments to a DM Event. |  |
| **text** | **String** | Text of the message. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::CreateMessageRequest.new(
  attachments: null,
  text: null
)
```

