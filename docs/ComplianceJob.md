# Xbird::ComplianceJob

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Creation time of the compliance job. |  |
| **download_expires_at** | **Time** | Expiration time of the download URL. |  |
| **download_url** | **String** | URL from which the user will retrieve their compliance results. |  |
| **id** | **String** | Compliance Job ID. |  |
| **name** | **String** | User-provided name for a compliance job. | [optional] |
| **status** | [**ComplianceJobStatus**](ComplianceJobStatus.md) |  |  |
| **type** | [**ComplianceJobType**](ComplianceJobType.md) |  |  |
| **upload_expires_at** | **Time** | Expiration time of the upload URL. |  |
| **upload_url** | **String** | URL to which the user will upload their Tweet or user IDs. |  |

## Example

```ruby
require 'xbird'

instance = Xbird::ComplianceJob.new(
  created_at: 2021-01-06T18:40:40Z,
  download_expires_at: 2021-01-06T18:40:40Z,
  download_url: null,
  id: 1372966999991541762,
  name: my-job,
  status: null,
  type: null,
  upload_expires_at: 2021-01-06T18:40:40Z,
  upload_url: null
)
```

