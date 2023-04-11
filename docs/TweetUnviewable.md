# Xbird::TweetUnviewable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application** | **String** | If the label is being applied or removed. Possible values are ‘apply’ or ‘remove’. |  |
| **event_at** | **Time** | Event time. |  |
| **tweet** | [**TweetComplianceSchemaTweet**](TweetComplianceSchemaTweet.md) |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetUnviewable.new(
  application: apply,
  event_at: 2021-07-06T18:40:40Z,
  tweet: null
)
```

