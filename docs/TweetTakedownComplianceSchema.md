# Xbird::TweetTakedownComplianceSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_at** | **Time** | Event time. |  |
| **quote_tweet_id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **tweet** | [**TweetComplianceSchemaTweet**](TweetComplianceSchemaTweet.md) |  |  |
| **withheld_in_countries** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetTakedownComplianceSchema.new(
  event_at: 2021-07-06T18:40:40Z,
  quote_tweet_id: 1346889436626259968,
  tweet: null,
  withheld_in_countries: null
)
```

