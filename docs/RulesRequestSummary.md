# Xbird::RulesRequestSummary

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'xbird'

Xbird::RulesRequestSummary.openapi_one_of
# =>
# [
#   :'RulesRequestSummaryOneOf',
#   :'RulesRequestSummaryOneOf1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'xbird'

Xbird::RulesRequestSummary.build(data)
# => #<RulesRequestSummaryOneOf:0x00007fdd4aab02a0>

Xbird::RulesRequestSummary.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RulesRequestSummaryOneOf`
- `RulesRequestSummaryOneOf1`
- `nil` (if no type matches)

