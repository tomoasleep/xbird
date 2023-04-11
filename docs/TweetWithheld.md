# Xbird::TweetWithheld

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **copyright** | **Boolean** | Indicates if the content is being withheld for on the basis of copyright infringement. |  |
| **country_codes** | **Array&lt;String&gt;** | Provides a list of countries where this content is not available. |  |
| **scope** | **String** | Indicates whether the content being withheld is the &#x60;tweet&#x60; or a &#x60;user&#x60;. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetWithheld.new(
  copyright: null,
  country_codes: null,
  scope: null
)
```

