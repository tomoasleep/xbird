# Xbird::Get2TweetsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Tweet&gt;**](Tweet.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2TweetsResponse.new(
  data: null,
  errors: null,
  includes: null
)
```

