# Xbird::UserComplianceData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'xbird'

Xbird::UserComplianceData.openapi_one_of
# =>
# [
#   :'UserDeleteComplianceSchema',
#   :'UserProfileModificationComplianceSchema',
#   :'UserProtectComplianceSchema',
#   :'UserScrubGeoSchema',
#   :'UserSuspendComplianceSchema',
#   :'UserUndeleteComplianceSchema',
#   :'UserUnprotectComplianceSchema',
#   :'UserUnsuspendComplianceSchema',
#   :'UserWithheldComplianceSchema'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'xbird'

Xbird::UserComplianceData.build(data)
# => #<UserDeleteComplianceSchema:0x00007fdd4aab02a0>

Xbird::UserComplianceData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `UserDeleteComplianceSchema`
- `UserProfileModificationComplianceSchema`
- `UserProtectComplianceSchema`
- `UserScrubGeoSchema`
- `UserSuspendComplianceSchema`
- `UserUndeleteComplianceSchema`
- `UserUnprotectComplianceSchema`
- `UserUnsuspendComplianceSchema`
- `UserWithheldComplianceSchema`
- `nil` (if no type matches)

