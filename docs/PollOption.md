# Xbird::PollOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label** | **String** | The text of a poll choice. |  |
| **position** | **Integer** | Position of this choice in the poll. |  |
| **votes** | **Integer** | Number of users who voted for this choice. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::PollOption.new(
  label: null,
  position: null,
  votes: null
)
```

