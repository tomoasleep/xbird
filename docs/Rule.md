# Xbird::Rule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this rule. | [optional] |
| **tag** | **String** | A tag meant for the labeling of user provided rules. | [optional] |
| **value** | **String** | The filterlang value of the rule. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::Rule.new(
  id: 120897978112909812,
  tag: Non-retweeted coffee Tweets,
  value: coffee -is:retweet
)
```

