# Xbird::TweetEditComplianceObjectSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edit_tweet_ids** | **Array&lt;String&gt;** |  |  |
| **event_at** | **Time** | Event time. |  |
| **initial_tweet_id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |
| **tweet** | [**DmEventReferencedTweetsInner**](DmEventReferencedTweetsInner.md) |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetEditComplianceObjectSchema.new(
  edit_tweet_ids: null,
  event_at: 2021-07-06T18:40:40Z,
  initial_tweet_id: 1346889436626259968,
  tweet: null
)
```

