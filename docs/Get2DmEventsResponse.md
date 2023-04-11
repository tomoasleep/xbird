# Xbird::Get2DmEventsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;DmEvent&gt;**](DmEvent.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2DmConversationsIdDmEventsResponseMeta**](Get2DmConversationsIdDmEventsResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2DmEventsResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

