# Xbird::TweetLabelStreamResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'xbird'

Xbird::TweetLabelStreamResponse.openapi_one_of
# =>
# [
#   :'TweetComplianceStreamResponseOneOf1',
#   :'TweetLabelStreamResponseOneOf'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'xbird'

Xbird::TweetLabelStreamResponse.build(data)
# => #<TweetComplianceStreamResponseOneOf1:0x00007fdd4aab02a0>

Xbird::TweetLabelStreamResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TweetComplianceStreamResponseOneOf1`
- `TweetLabelStreamResponseOneOf`
- `nil` (if no type matches)

