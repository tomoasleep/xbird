# Xbird::UserWithheld

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_codes** | **Array&lt;String&gt;** | Provides a list of countries where this content is not available. |  |
| **scope** | **String** | Indicates that the content being withheld is a &#x60;user&#x60;. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::UserWithheld.new(
  country_codes: null,
  scope: null
)
```

