# Xbird::UserComplianceSchemaUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::UserComplianceSchemaUser.new(
  id: 2244994945
)
```

