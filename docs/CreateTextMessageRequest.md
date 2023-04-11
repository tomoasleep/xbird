# Xbird::CreateTextMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**Array&lt;DmMediaAttachment&gt;**](DmMediaAttachment.md) | Attachments to a DM Event. | [optional] |
| **text** | **String** | Text of the message. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::CreateTextMessageRequest.new(
  attachments: null,
  text: null
)
```

