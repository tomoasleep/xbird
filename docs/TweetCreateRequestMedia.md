# Xbird::TweetCreateRequestMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **media_ids** | **Array&lt;String&gt;** | A list of Media Ids to be attached to a created Tweet. |  |
| **tagged_user_ids** | **Array&lt;String&gt;** | A list of User Ids to be tagged in the media for created Tweet. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetCreateRequestMedia.new(
  media_ids: null,
  tagged_user_ids: null
)
```

