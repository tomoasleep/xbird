# Xbird::Tweet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**TweetAttachments**](TweetAttachments.md) |  | [optional] |
| **author_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **context_annotations** | [**Array&lt;ContextAnnotation&gt;**](ContextAnnotation.md) |  | [optional] |
| **conversation_id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **created_at** | **Time** | Creation time of the Tweet. | [optional] |
| **edit_controls** | [**TweetEditControls**](TweetEditControls.md) |  | [optional] |
| **edit_history_tweet_ids** | **Array&lt;String&gt;** | A list of Tweet Ids in this Tweet chain. |  |
| **entities** | [**FullTextEntities**](FullTextEntities.md) |  | [optional] |
| **geo** | [**TweetGeo**](TweetGeo.md) |  | [optional] |
| **id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |
| **in_reply_to_user_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **lang** | **String** | Language of the Tweet, if detected by Twitter. Returned as a BCP47 language tag. | [optional] |
| **non_public_metrics** | [**TweetNonPublicMetrics**](TweetNonPublicMetrics.md) |  | [optional] |
| **organic_metrics** | [**TweetOrganicMetrics**](TweetOrganicMetrics.md) |  | [optional] |
| **possibly_sensitive** | **Boolean** | Indicates if this Tweet contains URLs marked as sensitive, for example content suitable for mature audiences. | [optional] |
| **promoted_metrics** | [**TweetPromotedMetrics**](TweetPromotedMetrics.md) |  | [optional] |
| **public_metrics** | [**TweetPublicMetrics**](TweetPublicMetrics.md) |  | [optional] |
| **referenced_tweets** | [**Array&lt;TweetReferencedTweetsInner&gt;**](TweetReferencedTweetsInner.md) | A list of Tweets this Tweet refers to. For example, if the parent Tweet is a Retweet, a Quoted Tweet or a Reply, it will include the related Tweet referenced to by its parent. | [optional] |
| **reply_settings** | [**ReplySettings**](ReplySettings.md) |  | [optional] |
| **source** | **String** | This is deprecated. | [optional] |
| **text** | **String** | The content of the Tweet. |  |
| **withheld** | [**TweetWithheld**](TweetWithheld.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Tweet.new(
  attachments: null,
  author_id: 2244994945,
  context_annotations: null,
  conversation_id: 1346889436626259968,
  created_at: 2021-01-06T18:40:40Z,
  edit_controls: null,
  edit_history_tweet_ids: null,
  entities: null,
  geo: null,
  id: 1346889436626259968,
  in_reply_to_user_id: 2244994945,
  lang: en,
  non_public_metrics: null,
  organic_metrics: null,
  possibly_sensitive: false,
  promoted_metrics: null,
  public_metrics: null,
  referenced_tweets: null,
  reply_settings: null,
  source: null,
  text: Learn how to use the user Tweet timeline and user mention timeline endpoints in the Twitter API v2 to explore Tweet\u2026 https:\/\/t.co\/56a0vZUx7i,
  withheld: null
)
```

