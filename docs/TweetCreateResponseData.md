# Xbird::TweetCreateResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |
| **text** | **String** | The content of the Tweet. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetCreateResponseData.new(
  id: 1346889436626259968,
  text: Learn how to use the user Tweet timeline and user mention timeline endpoints in the Twitter API v2 to explore Tweet\u2026 https:\/\/t.co\/56a0vZUx7i
)
```

