# Xbird::RulesRequestSummaryOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Integer** | Number of user-specified stream filtering rules that were created. |  |
| **invalid** | **Integer** | Number of invalid user-specified stream filtering rules. |  |
| **not_created** | **Integer** | Number of user-specified stream filtering rules that were not created. |  |
| **valid** | **Integer** | Number of valid user-specified stream filtering rules. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::RulesRequestSummaryOneOf.new(
  created: 1,
  invalid: 1,
  not_created: 1,
  valid: 1
)
```

