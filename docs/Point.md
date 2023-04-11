# Xbird::Point

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **coordinates** | **Array&lt;Float&gt;** | A [GeoJson Position](https://tools.ietf.org/html/rfc7946#section-3.1.1) in the format &#x60;[longitude,latitude]&#x60;. |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'xbird'

instance = Xbird::Point.new(
  coordinates: [-105.18816086351444,40.247749999999996],
  type: Point
)
```

