# Xbird::UserTakedownComplianceSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_at** | **Time** | Event time. |  |
| **user** | [**UserComplianceSchemaUser**](UserComplianceSchemaUser.md) |  |  |
| **withheld_in_countries** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::UserTakedownComplianceSchema.new(
  event_at: 2021-07-06T18:40:40Z,
  user: null,
  withheld_in_countries: null
)
```

