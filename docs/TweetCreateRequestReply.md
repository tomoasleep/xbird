# Xbird::TweetCreateRequestReply

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclude_reply_user_ids** | **Array&lt;String&gt;** | A list of User Ids to be excluded from the reply Tweet. | [optional] |
| **in_reply_to_tweet_id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetCreateRequestReply.new(
  exclude_reply_user_ids: null,
  in_reply_to_tweet_id: 1346889436626259968
)
```

