# Xbird::Get2UsersIdBookmarksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Tweet&gt;**](Tweet.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2DmConversationsIdDmEventsResponseMeta**](Get2DmConversationsIdDmEventsResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2UsersIdBookmarksResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

