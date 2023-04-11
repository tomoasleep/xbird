# Xbird::Get2SpacesByCreatorIdsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Space&gt;**](Space.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2ComplianceJobsResponseMeta**](Get2ComplianceJobsResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Get2SpacesByCreatorIdsResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

