# Xbird::TweetAttachments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media_keys** | **Array&lt;String&gt;** | A list of Media Keys for each one of the media attachments (if media are attached). | [optional] |
| **poll_ids** | **Array&lt;String&gt;** | A list of poll IDs (if polls are attached). | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetAttachments.new(
  media_keys: null,
  poll_ids: null
)
```

