# Xbird::AddOrDeleteRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Rule&gt;**](Rule.md) | All user-specified stream filtering rules that were created. | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **meta** | [**RulesResponseMetadata**](RulesResponseMetadata.md) |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::AddOrDeleteRulesResponse.new(
  data: null,
  errors: null,
  meta: null
)
```

