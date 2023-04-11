# Xbird::TweetComplianceSchemaTweet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |
| **id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetComplianceSchemaTweet.new(
  author_id: 2244994945,
  id: 1346889436626259968
)
```

