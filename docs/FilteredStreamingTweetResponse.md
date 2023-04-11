# Xbird::FilteredStreamingTweetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Tweet**](Tweet.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **matching_rules** | [**Array&lt;FilteredStreamingTweetResponseMatchingRulesInner&gt;**](FilteredStreamingTweetResponseMatchingRulesInner.md) | The list of rules which matched the Tweet | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::FilteredStreamingTweetResponse.new(
  data: null,
  errors: null,
  includes: null,
  matching_rules: null
)
```

