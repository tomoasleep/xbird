# Xbird::UserProfileModificationObjectSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_at** | **Time** | Event time. |  |
| **new_value** | **String** |  |  |
| **profile_field** | **String** |  |  |
| **user** | [**UserComplianceSchemaUser**](UserComplianceSchemaUser.md) |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::UserProfileModificationObjectSchema.new(
  event_at: 2021-07-06T18:40:40Z,
  new_value: null,
  profile_field: null,
  user: null
)
```

