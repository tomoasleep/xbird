# Xbird::DmEventAttachments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_ids** | **Array&lt;String&gt;** | A list of card IDs (if cards are attached). | [optional] |
| **media_keys** | **Array&lt;String&gt;** | A list of Media Keys for each one of the media attachments (if media are attached). | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::DmEventAttachments.new(
  card_ids: null,
  media_keys: null
)
```

