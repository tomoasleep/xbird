# Xbird::Get2TweetsCountsAllResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **newest_id** | **String** | The newest id in this response. | [optional] |
| **next_token** | **String** | The next token. | [optional] |
| **oldest_id** | **String** | The oldest id in this response. | [optional] |
| **total_tweet_count** | **Integer** | The sum of results returned in this response. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2TweetsCountsAllResponseMeta.new(
  newest_id: null,
  next_token: null,
  oldest_id: null,
  total_tweet_count: null
)
```

