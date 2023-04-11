# Xbird::TweetPublicMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impression_count** | **Integer** | Number of times this Tweet has been viewed. |  |
| **like_count** | **Integer** | Number of times this Tweet has been liked. |  |
| **quote_count** | **Integer** | Number of times this Tweet has been quoted. | [optional] |
| **reply_count** | **Integer** | Number of times this Tweet has been replied to. |  |
| **retweet_count** | **Integer** | Number of times this Tweet has been Retweeted. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetPublicMetrics.new(
  impression_count: null,
  like_count: null,
  quote_count: null,
  reply_count: null,
  retweet_count: null
)
```

