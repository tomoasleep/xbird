# Xbird::DmEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachments** | [**DmEventAttachments**](DmEventAttachments.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **dm_conversation_id** | **String** | Unique identifier of a DM conversation. This can either be a numeric string, or a pair of numeric strings separated by a &#39;-&#39; character in the case of one-on-one DM Conversations. | [optional] |
| **event_type** | **String** |  |  |
| **id** | **String** | Unique identifier of a DM Event. |  |
| **participant_ids** | **Array&lt;String&gt;** | A list of participants for a ParticipantsJoin or ParticipantsLeave event_type. | [optional] |
| **referenced_tweets** | [**Array&lt;DmEventReferencedTweetsInner&gt;**](DmEventReferencedTweetsInner.md) | A list of Tweets this DM refers to. | [optional] |
| **sender_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. | [optional] |
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'xbird'

instance = Xbird::DmEvent.new(
  attachments: null,
  created_at: null,
  dm_conversation_id: 123123123-456456456,
  event_type: MessageCreate,
  id: 1146654567674912769,
  participant_ids: null,
  referenced_tweets: null,
  sender_id: 2244994945,
  text: null
)
```

