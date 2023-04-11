# Xbird::UserScrubGeoObjectSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_at** | **Time** | Event time. |  |
| **up_to_tweet_id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |
| **user** | [**UserComplianceSchemaUser**](UserComplianceSchemaUser.md) |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::UserScrubGeoObjectSchema.new(
  event_at: 2021-07-06T18:40:40Z,
  up_to_tweet_id: 1346889436626259968,
  user: null
)
```

