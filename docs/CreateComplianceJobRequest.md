# Xbird::CreateComplianceJobRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | User-provided name for a compliance job. | [optional] |
| **resumable** | **Boolean** | If true, this endpoint will return a pre-signed URL with resumable uploads enabled. | [optional] |
| **type** | **String** | Type of compliance job to list. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::CreateComplianceJobRequest.new(
  name: my-job,
  resumable: null,
  type: null
)
```

