# Xbird::StreamingTweetResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Tweet**](Tweet.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::StreamingTweetResponse.new(
  data: null,
  errors: null,
  includes: null
)
```

