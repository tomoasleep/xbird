# Xbird::TweetEditControls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **editable_until** | **Time** | Time when Tweet is no longer editable. |  |
| **edits_remaining** | **Integer** | Number of times this Tweet can be edited. |  |
| **is_edit_eligible** | **Boolean** | Indicates if this Tweet is eligible to be edited. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::TweetEditControls.new(
  editable_until: 2021-01-06T18:40:40Z,
  edits_remaining: null,
  is_edit_eligible: false
)
```

