# Xbird::RulesResponseMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | The next token. | [optional] |
| **result_count** | **Integer** | Number of Rules in result set. | [optional] |
| **sent** | **String** |  |  |
| **summary** | [**RulesRequestSummary**](RulesRequestSummary.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::RulesResponseMetadata.new(
  next_token: null,
  result_count: null,
  sent: null,
  summary: null
)
```

