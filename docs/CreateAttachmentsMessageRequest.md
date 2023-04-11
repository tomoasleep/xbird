# Xbird::CreateAttachmentsMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**Array&lt;DmMediaAttachment&gt;**](DmMediaAttachment.md) | Attachments to a DM Event. |  |
| **text** | **String** | Text of the message. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::CreateAttachmentsMessageRequest.new(
  attachments: null,
  text: null
)
```

