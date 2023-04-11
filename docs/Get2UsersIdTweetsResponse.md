# Xbird::Get2UsersIdTweetsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Tweet&gt;**](Tweet.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2UsersIdMentionsResponseMeta**](Get2UsersIdMentionsResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2UsersIdTweetsResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

