# Xbird::Topic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The description of the given topic. | [optional] |
| **id** | **String** | Unique identifier of this Topic. |  |
| **name** | **String** | The name of the given topic. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::Topic.new(
  description: All about technology,
  id: null,
  name: Technology
)
```

