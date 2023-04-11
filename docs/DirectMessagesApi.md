# Xbird::DirectMessagesApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dm_conversation_by_id_event_id_create**](DirectMessagesApi.md#dm_conversation_by_id_event_id_create) | **POST** /2/dm_conversations/{dm_conversation_id}/messages | Send a new message to a DM Conversation |
| [**dm_conversation_id_create**](DirectMessagesApi.md#dm_conversation_id_create) | **POST** /2/dm_conversations | Create a new DM Conversation |
| [**dm_conversation_with_user_event_id_create**](DirectMessagesApi.md#dm_conversation_with_user_event_id_create) | **POST** /2/dm_conversations/with/{participant_id}/messages | Send a new message to a user |
| [**get_dm_conversations_id_dm_events**](DirectMessagesApi.md#get_dm_conversations_id_dm_events) | **GET** /2/dm_conversations/{id}/dm_events | Get DM Events for a DM Conversation |
| [**get_dm_conversations_with_participant_id_dm_events**](DirectMessagesApi.md#get_dm_conversations_with_participant_id_dm_events) | **GET** /2/dm_conversations/with/{participant_id}/dm_events | Get DM Events for a DM Conversation |
| [**get_dm_events**](DirectMessagesApi.md#get_dm_events) | **GET** /2/dm_events | Get recent DM Events |


## dm_conversation_by_id_event_id_create

> <CreateDmEventResponse> dm_conversation_by_id_event_id_create(dm_conversation_id, opts)

Send a new message to a DM Conversation

Creates a new message for a DM Conversation specified by DM Conversation ID

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::DirectMessagesApi.new
dm_conversation_id = 'dm_conversation_id_example' # String | The DM Conversation ID.
opts = {
  create_message_request: Xbird::CreateMessageRequest.new({attachments: [Xbird::DmMediaAttachment.new({media_id: '1146654567674912769'})], text: 'text_example'}) # CreateMessageRequest | 
}

begin
  # Send a new message to a DM Conversation
  result = api_instance.dm_conversation_by_id_event_id_create(dm_conversation_id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->dm_conversation_by_id_event_id_create: #{e}"
end
```

#### Using the dm_conversation_by_id_event_id_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDmEventResponse>, Integer, Hash)> dm_conversation_by_id_event_id_create_with_http_info(dm_conversation_id, opts)

```ruby
begin
  # Send a new message to a DM Conversation
  data, status_code, headers = api_instance.dm_conversation_by_id_event_id_create_with_http_info(dm_conversation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDmEventResponse>
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->dm_conversation_by_id_event_id_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dm_conversation_id** | **String** | The DM Conversation ID. |  |
| **create_message_request** | [**CreateMessageRequest**](CreateMessageRequest.md) |  | [optional] |

### Return type

[**CreateDmEventResponse**](CreateDmEventResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## dm_conversation_id_create

> <CreateDmEventResponse> dm_conversation_id_create(opts)

Create a new DM Conversation

Creates a new DM Conversation.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::DirectMessagesApi.new
opts = {
  create_dm_conversation_request: Xbird::CreateDmConversationRequest.new({conversation_type: 'Group', message: Xbird::CreateMessageRequest.new({attachments: [Xbird::DmMediaAttachment.new({media_id: '1146654567674912769'})], text: 'text_example'}), participant_ids: ['2244994945']}) # CreateDmConversationRequest | 
}

begin
  # Create a new DM Conversation
  result = api_instance.dm_conversation_id_create(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->dm_conversation_id_create: #{e}"
end
```

#### Using the dm_conversation_id_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDmEventResponse>, Integer, Hash)> dm_conversation_id_create_with_http_info(opts)

```ruby
begin
  # Create a new DM Conversation
  data, status_code, headers = api_instance.dm_conversation_id_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDmEventResponse>
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->dm_conversation_id_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_dm_conversation_request** | [**CreateDmConversationRequest**](CreateDmConversationRequest.md) |  | [optional] |

### Return type

[**CreateDmEventResponse**](CreateDmEventResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## dm_conversation_with_user_event_id_create

> <CreateDmEventResponse> dm_conversation_with_user_event_id_create(participant_id, opts)

Send a new message to a user

Creates a new message for a DM Conversation with a participant user by ID

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::DirectMessagesApi.new
participant_id = 'participant_id_example' # String | The ID of the recipient user that will receive the DM.
opts = {
  create_message_request: Xbird::CreateMessageRequest.new({attachments: [Xbird::DmMediaAttachment.new({media_id: '1146654567674912769'})], text: 'text_example'}) # CreateMessageRequest | 
}

begin
  # Send a new message to a user
  result = api_instance.dm_conversation_with_user_event_id_create(participant_id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->dm_conversation_with_user_event_id_create: #{e}"
end
```

#### Using the dm_conversation_with_user_event_id_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDmEventResponse>, Integer, Hash)> dm_conversation_with_user_event_id_create_with_http_info(participant_id, opts)

```ruby
begin
  # Send a new message to a user
  data, status_code, headers = api_instance.dm_conversation_with_user_event_id_create_with_http_info(participant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDmEventResponse>
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->dm_conversation_with_user_event_id_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_id** | **String** | The ID of the recipient user that will receive the DM. |  |
| **create_message_request** | [**CreateMessageRequest**](CreateMessageRequest.md) |  | [optional] |

### Return type

[**CreateDmEventResponse**](CreateDmEventResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_dm_conversations_id_dm_events

> <Get2DmConversationsIdDmEventsResponse> get_dm_conversations_id_dm_events(id, opts)

Get DM Events for a DM Conversation

Returns DM Events for a DM Conversation

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::DirectMessagesApi.new
id = 'id_example' # String | The DM Conversation ID.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  event_types: ['MessageCreate'], # Array<String> | The set of event_types to include in the results.
  dm_event_fields: ['attachments'], # Array<String> | A comma separated list of DmEvent fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Get DM Events for a DM Conversation
  result = api_instance.get_dm_conversations_id_dm_events(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->get_dm_conversations_id_dm_events: #{e}"
end
```

#### Using the get_dm_conversations_id_dm_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2DmConversationsIdDmEventsResponse>, Integer, Hash)> get_dm_conversations_id_dm_events_with_http_info(id, opts)

```ruby
begin
  # Get DM Events for a DM Conversation
  data, status_code, headers = api_instance.get_dm_conversations_id_dm_events_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2DmConversationsIdDmEventsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->get_dm_conversations_id_dm_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The DM Conversation ID. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **event_types** | [**Array&lt;String&gt;**](String.md) | The set of event_types to include in the results. | [optional] |
| **dm_event_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of DmEvent fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2DmConversationsIdDmEventsResponse**](Get2DmConversationsIdDmEventsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_dm_conversations_with_participant_id_dm_events

> <Get2DmConversationsWithParticipantIdDmEventsResponse> get_dm_conversations_with_participant_id_dm_events(participant_id, opts)

Get DM Events for a DM Conversation

Returns DM Events for a DM Conversation

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::DirectMessagesApi.new
participant_id = 'participant_id_example' # String | The ID of the participant user for the One to One DM conversation.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  event_types: ['MessageCreate'], # Array<String> | The set of event_types to include in the results.
  dm_event_fields: ['attachments'], # Array<String> | A comma separated list of DmEvent fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Get DM Events for a DM Conversation
  result = api_instance.get_dm_conversations_with_participant_id_dm_events(participant_id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->get_dm_conversations_with_participant_id_dm_events: #{e}"
end
```

#### Using the get_dm_conversations_with_participant_id_dm_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2DmConversationsWithParticipantIdDmEventsResponse>, Integer, Hash)> get_dm_conversations_with_participant_id_dm_events_with_http_info(participant_id, opts)

```ruby
begin
  # Get DM Events for a DM Conversation
  data, status_code, headers = api_instance.get_dm_conversations_with_participant_id_dm_events_with_http_info(participant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2DmConversationsWithParticipantIdDmEventsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->get_dm_conversations_with_participant_id_dm_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_id** | **String** | The ID of the participant user for the One to One DM conversation. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **event_types** | [**Array&lt;String&gt;**](String.md) | The set of event_types to include in the results. | [optional] |
| **dm_event_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of DmEvent fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2DmConversationsWithParticipantIdDmEventsResponse**](Get2DmConversationsWithParticipantIdDmEventsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_dm_events

> <Get2DmEventsResponse> get_dm_events(opts)

Get recent DM Events

Returns recent DM Events across DM conversations

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::DirectMessagesApi.new
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  event_types: ['MessageCreate'], # Array<String> | The set of event_types to include in the results.
  dm_event_fields: ['attachments'], # Array<String> | A comma separated list of DmEvent fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Get recent DM Events
  result = api_instance.get_dm_events(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->get_dm_events: #{e}"
end
```

#### Using the get_dm_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2DmEventsResponse>, Integer, Hash)> get_dm_events_with_http_info(opts)

```ruby
begin
  # Get recent DM Events
  data, status_code, headers = api_instance.get_dm_events_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2DmEventsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling DirectMessagesApi->get_dm_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **event_types** | [**Array&lt;String&gt;**](String.md) | The set of event_types to include in the results. | [optional] |
| **dm_event_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of DmEvent fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2DmEventsResponse**](Get2DmEventsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

