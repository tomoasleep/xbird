# Xbird::TweetGeo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coordinates** | [**Point**](Point.md) |  | [optional] |
| **place_id** | **String** | The identifier for this place. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetGeo.new(
  coordinates: null,
  place_id: f7eb2fa2fea288b1
)
```

