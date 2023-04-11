# Xbird::RulesRequestSummaryOneOf1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted** | **Integer** | Number of user-specified stream filtering rules that were deleted. |  |
| **not_deleted** | **Integer** | Number of user-specified stream filtering rules that were not deleted. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::RulesRequestSummaryOneOf1.new(
  deleted: null,
  not_deleted: null
)
```

