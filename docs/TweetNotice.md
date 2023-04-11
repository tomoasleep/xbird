# Xbird::TweetNotice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application** | **String** | If the label is being applied or removed. Possible values are ‘apply’ or ‘remove’. |  |
| **details** | **String** | Information shown on the Tweet label | [optional] |
| **event_at** | **Time** | Event time. |  |
| **event_type** | **String** | The type of label on the Tweet |  |
| **extended_details_url** | **String** | Link to more information about this kind of label | [optional] |
| **label_title** | **String** | Title/header of the Tweet label | [optional] |
| **tweet** | [**TweetComplianceSchemaTweet**](TweetComplianceSchemaTweet.md) |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetNotice.new(
  application: apply,
  details: null,
  event_at: 2021-07-06T18:40:40Z,
  event_type: misleading,
  extended_details_url: null,
  label_title: null,
  tweet: null
)
```

