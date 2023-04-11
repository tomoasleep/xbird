# Xbird::Get2UsersIdMentionsResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **newest_id** | **String** | The newest id in this response. | [optional] |
| **next_token** | **String** | The next token. | [optional] |
| **oldest_id** | **String** | The oldest id in this response. | [optional] |
| **previous_token** | **String** | The previous token. | [optional] |
| **result_count** | **Integer** | The number of results returned in this response. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2UsersIdMentionsResponseMeta.new(
  newest_id: null,
  next_token: null,
  oldest_id: null,
  previous_token: null,
  result_count: null
)
```

