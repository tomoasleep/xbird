# Xbird::Get2UsersIdBlockingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;User&gt;**](User.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2DmConversationsIdDmEventsResponseMeta**](Get2DmConversationsIdDmEventsResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2UsersIdBlockingResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

