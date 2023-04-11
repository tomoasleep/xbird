# Xbird::UserPublicMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **followers_count** | **Integer** | Number of Users who are following this User. |  |
| **following_count** | **Integer** | Number of Users this User is following. |  |
| **listed_count** | **Integer** | The number of lists that include this User. |  |
| **tweet_count** | **Integer** | The number of Tweets (including Retweets) posted by this User. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::UserPublicMetrics.new(
  followers_count: null,
  following_count: null,
  listed_count: null,
  tweet_count: null
)
```

