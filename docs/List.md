# Xbird::List

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** |  | [optional] |
| **description** | **String** |  | [optional] |
| **follower_count** | **Integer** |  | [optional] |
| **id** | **String** | The unique identifier of this List. |  |
| **member_count** | **Integer** |  | [optional] |
| **name** | **String** | The name of this List. |  |
| **owner_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **private** | **Boolean** |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::List.new(
  created_at: null,
  description: null,
  follower_count: null,
  id: 1146654567674912769,
  member_count: null,
  name: null,
  owner_id: 2244994945,
  private: null
)
```

