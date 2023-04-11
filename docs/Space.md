# Xbird::Space

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Creation time of the Space. | [optional] |
| **creator_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **ended_at** | **Time** | End time of the Space. | [optional] |
| **host_ids** | **Array&lt;String&gt;** | The user ids for the hosts of the Space. | [optional] |
| **id** | **String** | The unique identifier of this Space. |  |
| **invited_user_ids** | **Array&lt;String&gt;** | An array of user ids for people who were invited to a Space. | [optional] |
| **is_ticketed** | **Boolean** | Denotes if the Space is a ticketed Space. | [optional] |
| **lang** | **String** | The language of the Space. | [optional] |
| **participant_count** | **Integer** | The number of participants in a Space. | [optional] |
| **scheduled_start** | **Time** | A date time stamp for when a Space is scheduled to begin. | [optional] |
| **speaker_ids** | **Array&lt;String&gt;** | An array of user ids for people who were speakers in a Space. | [optional] |
| **started_at** | **Time** | When the Space was started as a date string. | [optional] |
| **state** | **String** | The current state of the Space. |  |
| **subscriber_count** | **Integer** | The number of people who have either purchased a ticket or set a reminder for this Space. | [optional] |
| **title** | **String** | The title of the Space. | [optional] |
| **topics** | [**Array&lt;SpaceTopicsInner&gt;**](SpaceTopicsInner.md) | The topics of a Space, as selected by its creator. | [optional] |
| **updated_at** | **Time** | When the Space was last updated. | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::Space.new(
  created_at: 2021-07-06T18:40:40Z,
  creator_id: 2244994945,
  ended_at: 2021-07-06T18:40:40Z,
  host_ids: null,
  id: 1SLjjRYNejbKM,
  invited_user_ids: null,
  is_ticketed: false,
  lang: en,
  participant_count: 10,
  scheduled_start: 2021-07-06T18:40:40Z,
  speaker_ids: null,
  started_at: null,
  state: live,
  subscriber_count: 10,
  title: Spaces are Awesome,
  topics: null,
  updated_at: null
)
```

