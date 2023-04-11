# Xbird::VideoAllOfNonPublicMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **playback_0_count** | **Integer** | Number of users who made it through 0% of the video. | [optional] |
| **playback_100_count** | **Integer** | Number of users who made it through 100% of the video. | [optional] |
| **playback_25_count** | **Integer** | Number of users who made it through 25% of the video. | [optional] |
| **playback_50_count** | **Integer** | Number of users who made it through 50% of the video. | [optional] |
| **playback_75_count** | **Integer** | Number of users who made it through 75% of the video. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::VideoAllOfNonPublicMetrics.new(
  playback_0_count: null,
  playback_100_count: null,
  playback_25_count: null,
  playback_50_count: null,
  playback_75_count: null
)
```

