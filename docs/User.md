# Xbird::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Creation time of this User. | [optional] |
| **description** | **String** | The text of this User&#39;s profile description (also known as bio), if the User provided one. | [optional] |
| **entities** | [**UserEntities**](UserEntities.md) |  | [optional] |
| **id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |
| **location** | **String** | The location specified in the User&#39;s profile, if the User provided one. As this is a freeform value, it may not indicate a valid location, but it may be fuzzily evaluated when performing searches with location queries. | [optional] |
| **name** | **String** | The friendly name of this User, as shown on their profile. |  |
| **pinned_tweet_id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **profile_image_url** | **String** | The URL to the profile image for this User. | [optional] |
| **protected** | **Boolean** | Indicates if this User has chosen to protect their Tweets (in other words, if this User&#39;s Tweets are private). | [optional] |
| **public_metrics** | [**UserPublicMetrics**](UserPublicMetrics.md) |  | [optional] |
| **url** | **String** | The URL specified in the User&#39;s profile. | [optional] |
| **username** | **String** | The Twitter handle (screen name) of this user. |  |
| **verified** | **Boolean** | Indicate if this User is a verified Twitter User. | [optional] |
| **verified_type** | **String** | The Twitter Blue verified type of the user, eg: blue, government, business or none. | [optional] |
| **withheld** | [**UserWithheld**](UserWithheld.md) |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::User.new(
  created_at: null,
  description: null,
  entities: null,
  id: 2244994945,
  location: null,
  name: null,
  pinned_tweet_id: 1346889436626259968,
  profile_image_url: null,
  protected: null,
  public_metrics: null,
  url: null,
  username: null,
  verified: null,
  verified_type: null,
  withheld: null
)
```

