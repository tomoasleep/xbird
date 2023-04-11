# Xbird::DeleteRulesRequestDelete

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **Array&lt;String&gt;** | IDs of all deleted user-specified stream filtering rules. | [optional] |
| **values** | **Array&lt;String&gt;** | Values of all deleted user-specified stream filtering rules. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::DeleteRulesRequestDelete.new(
  ids: null,
  values: null
)
```

