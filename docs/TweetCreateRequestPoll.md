# Xbird::TweetCreateRequestPoll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_minutes** | **Integer** | Duration of the poll in minutes. |  |
| **options** | **Array&lt;String&gt;** |  |  |
| **reply_settings** | **String** | Settings to indicate who can reply to the Tweet. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetCreateRequestPoll.new(
  duration_minutes: null,
  options: null,
  reply_settings: null
)
```

