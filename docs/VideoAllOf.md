# Xbird::VideoAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **duration_ms** | **Integer** |  | [optional] |
| **non_public_metrics** | [**VideoAllOfNonPublicMetrics**](VideoAllOfNonPublicMetrics.md) |  | [optional] |
| **organic_metrics** | [**VideoAllOfOrganicMetrics**](VideoAllOfOrganicMetrics.md) |  | [optional] |
| **preview_image_url** | **String** |  | [optional] |
| **promoted_metrics** | [**VideoAllOfPromotedMetrics**](VideoAllOfPromotedMetrics.md) |  | [optional] |
| **public_metrics** | [**VideoAllOfPublicMetrics**](VideoAllOfPublicMetrics.md) |  | [optional] |
| **variants** | [**Array&lt;Variant&gt;**](Variant.md) | An array of all available variants of the media. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::VideoAllOf.new(
  duration_ms: null,
  non_public_metrics: null,
  organic_metrics: null,
  preview_image_url: null,
  promoted_metrics: null,
  public_metrics: null,
  variants: null
)
```

