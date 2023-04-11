# Xbird::Place

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contained_within** | **Array&lt;String&gt;** |  | [optional] |
| **country** | **String** | The full name of the county in which this place exists. | [optional] |
| **country_code** | **String** | A two-letter ISO 3166-1 alpha-2 country code. | [optional] |
| **full_name** | **String** | The full name of this place. |  |
| **geo** | [**Geo**](Geo.md) |  | [optional] |
| **id** | **String** | The identifier for this place. |  |
| **name** | **String** | The human readable name of this place. | [optional] |
| **place_type** | [**PlaceType**](PlaceType.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Place.new(
  contained_within: null,
  country: United States,
  country_code: US,
  full_name: Lakewood, CO,
  geo: null,
  id: f7eb2fa2fea288b1,
  name: Lakewood,
  place_type: null
)
```

