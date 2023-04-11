# Xbird::TweetLabelData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'xbird'

Xbird::TweetLabelData.openapi_one_of
# =>
# [
#   :'TweetNoticeSchema',
#   :'TweetUnviewableSchema'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'xbird'

Xbird::TweetLabelData.build(data)
# => #<TweetNoticeSchema:0x00007fdd4aab02a0>

Xbird::TweetLabelData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TweetNoticeSchema`
- `TweetUnviewableSchema`
- `nil` (if no type matches)

