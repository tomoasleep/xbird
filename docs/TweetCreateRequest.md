# Xbird::TweetCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_uri** | **String** | Card Uri Parameter. This is mutually exclusive from Quote Tweet Id, Poll, Media, and Direct Message Deep Link. | [optional] |
| **direct_message_deep_link** | **String** | Link to take the conversation from the public timeline to a private Direct Message. | [optional] |
| **for_super_followers_only** | **Boolean** | Exclusive Tweet for super followers. | [optional][default to false] |
| **geo** | [**TweetCreateRequestGeo**](TweetCreateRequestGeo.md) |  | [optional] |
| **media** | [**TweetCreateRequestMedia**](TweetCreateRequestMedia.md) |  | [optional] |
| **nullcast** | **Boolean** | Nullcasted (promoted-only) Tweets do not appear in the public timeline and are not served to followers. | [optional][default to false] |
| **poll** | [**TweetCreateRequestPoll**](TweetCreateRequestPoll.md) |  | [optional] |
| **quote_tweet_id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **reply** | [**TweetCreateRequestReply**](TweetCreateRequestReply.md) |  | [optional] |
| **reply_settings** | **String** | Settings to indicate who can reply to the Tweet. | [optional] |
| **text** | **String** | The content of the Tweet. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetCreateRequest.new(
  card_uri: null,
  direct_message_deep_link: null,
  for_super_followers_only: null,
  geo: null,
  media: null,
  nullcast: null,
  poll: null,
  quote_tweet_id: 1346889436626259968,
  reply: null,
  reply_settings: null,
  text: Learn how to use the user Tweet timeline and user mention timeline endpoints in the Twitter API v2 to explore Tweet\u2026 https:\/\/t.co\/56a0vZUx7i
)
```

