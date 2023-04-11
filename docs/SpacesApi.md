# Xbird::SpacesApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_space_by_id**](SpacesApi.md#find_space_by_id) | **GET** /2/spaces/{id} | Space lookup by Space ID |
| [**find_spaces_by_creator_ids**](SpacesApi.md#find_spaces_by_creator_ids) | **GET** /2/spaces/by/creator_ids | Space lookup by their creators |
| [**find_spaces_by_ids**](SpacesApi.md#find_spaces_by_ids) | **GET** /2/spaces | Space lookup up Space IDs |
| [**search_spaces**](SpacesApi.md#search_spaces) | **GET** /2/spaces/search | Search for Spaces |
| [**space_buyers**](SpacesApi.md#space_buyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space |
| [**space_tweets**](SpacesApi.md#space_tweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space. |


## find_space_by_id

> <Get2SpacesIdResponse> find_space_by_id(id, opts)

Space lookup by Space ID

Returns a variety of information about the Space specified by the requested ID

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::SpacesApi.new
id = '1YqKDqWqdPLsV' # String | The ID of the Space to be retrieved.
opts = {
  space_fields: ['created_at'], # Array<String> | A comma separated list of Space fields to display.
  expansions: ['creator_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  topic_fields: ['description'] # Array<String> | A comma separated list of Topic fields to display.
}

begin
  # Space lookup by Space ID
  result = api_instance.find_space_by_id(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->find_space_by_id: #{e}"
end
```

#### Using the find_space_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2SpacesIdResponse>, Integer, Hash)> find_space_by_id_with_http_info(id, opts)

```ruby
begin
  # Space lookup by Space ID
  data, status_code, headers = api_instance.find_space_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2SpacesIdResponse>
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->find_space_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Space to be retrieved. |  |
| **space_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **topic_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] |

### Return type

[**Get2SpacesIdResponse**](Get2SpacesIdResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_spaces_by_creator_ids

> <Get2SpacesByCreatorIdsResponse> find_spaces_by_creator_ids(user_ids, opts)

Space lookup by their creators

Returns a variety of information about the Spaces created by the provided User IDs

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::SpacesApi.new
user_ids = ['2244994945'] # Array<String> | The IDs of Users to search through.
opts = {
  space_fields: ['created_at'], # Array<String> | A comma separated list of Space fields to display.
  expansions: ['creator_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  topic_fields: ['description'] # Array<String> | A comma separated list of Topic fields to display.
}

begin
  # Space lookup by their creators
  result = api_instance.find_spaces_by_creator_ids(user_ids, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->find_spaces_by_creator_ids: #{e}"
end
```

#### Using the find_spaces_by_creator_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2SpacesByCreatorIdsResponse>, Integer, Hash)> find_spaces_by_creator_ids_with_http_info(user_ids, opts)

```ruby
begin
  # Space lookup by their creators
  data, status_code, headers = api_instance.find_spaces_by_creator_ids_with_http_info(user_ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2SpacesByCreatorIdsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->find_spaces_by_creator_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_ids** | [**Array&lt;String&gt;**](String.md) | The IDs of Users to search through. |  |
| **space_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **topic_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] |

### Return type

[**Get2SpacesByCreatorIdsResponse**](Get2SpacesByCreatorIdsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_spaces_by_ids

> <Get2SpacesResponse> find_spaces_by_ids(ids, opts)

Space lookup up Space IDs

Returns a variety of information about the Spaces specified by the requested IDs

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::SpacesApi.new
ids = ['1SLjjRYNejbKM'] # Array<String> | The list of Space IDs to return.
opts = {
  space_fields: ['created_at'], # Array<String> | A comma separated list of Space fields to display.
  expansions: ['creator_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  topic_fields: ['description'] # Array<String> | A comma separated list of Topic fields to display.
}

begin
  # Space lookup up Space IDs
  result = api_instance.find_spaces_by_ids(ids, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->find_spaces_by_ids: #{e}"
end
```

#### Using the find_spaces_by_ids_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2SpacesResponse>, Integer, Hash)> find_spaces_by_ids_with_http_info(ids, opts)

```ruby
begin
  # Space lookup up Space IDs
  data, status_code, headers = api_instance.find_spaces_by_ids_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2SpacesResponse>
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->find_spaces_by_ids_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | The list of Space IDs to return. |  |
| **space_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **topic_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] |

### Return type

[**Get2SpacesResponse**](Get2SpacesResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## search_spaces

> <Get2SpacesSearchResponse> search_spaces(query, opts)

Search for Spaces

Returns Spaces that match the provided query.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::SpacesApi.new
query = 'crypto' # String | The search query.
opts = {
  state: 'live', # String | The state of Spaces to search for.
  max_results: 56, # Integer | The number of results to return.
  space_fields: ['created_at'], # Array<String> | A comma separated list of Space fields to display.
  expansions: ['creator_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  topic_fields: ['description'] # Array<String> | A comma separated list of Topic fields to display.
}

begin
  # Search for Spaces
  result = api_instance.search_spaces(query, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->search_spaces: #{e}"
end
```

#### Using the search_spaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2SpacesSearchResponse>, Integer, Hash)> search_spaces_with_http_info(query, opts)

```ruby
begin
  # Search for Spaces
  data, status_code, headers = api_instance.search_spaces_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2SpacesSearchResponse>
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->search_spaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. |  |
| **state** | **String** | The state of Spaces to search for. | [optional][default to &#39;all&#39;] |
| **max_results** | **Integer** | The number of results to return. | [optional][default to 100] |
| **space_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Space fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **topic_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Topic fields to display. | [optional] |

### Return type

[**Get2SpacesSearchResponse**](Get2SpacesSearchResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## space_buyers

> <Get2SpacesIdBuyersResponse> space_buyers(id, opts)

Retrieve the list of Users who purchased a ticket to the given space

Retrieves the list of Users who purchased a ticket to the given space

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Xbird::SpacesApi.new
id = '1YqKDqWqdPLsV' # String | The ID of the Space to be retrieved.
opts = {
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  max_results: 56, # Integer | The maximum number of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Retrieve the list of Users who purchased a ticket to the given space
  result = api_instance.space_buyers(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->space_buyers: #{e}"
end
```

#### Using the space_buyers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2SpacesIdBuyersResponse>, Integer, Hash)> space_buyers_with_http_info(id, opts)

```ruby
begin
  # Retrieve the list of Users who purchased a ticket to the given space
  data, status_code, headers = api_instance.space_buyers_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2SpacesIdBuyersResponse>
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->space_buyers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Space to be retrieved. |  |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2SpacesIdBuyersResponse**](Get2SpacesIdBuyersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## space_tweets

> <Get2SpacesIdTweetsResponse> space_tweets(id, opts)

Retrieve Tweets from a Space.

Retrieves Tweets shared in the specified Space.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::SpacesApi.new
id = '1YqKDqWqdPLsV' # String | The ID of the Space to be retrieved.
opts = {
  max_results: 25, # Integer | The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Retrieve Tweets from a Space.
  result = api_instance.space_tweets(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->space_tweets: #{e}"
end
```

#### Using the space_tweets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2SpacesIdTweetsResponse>, Integer, Hash)> space_tweets_with_http_info(id, opts)

```ruby
begin
  # Retrieve Tweets from a Space.
  data, status_code, headers = api_instance.space_tweets_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2SpacesIdTweetsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling SpacesApi->space_tweets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Space to be retrieved. |  |
| **max_results** | **Integer** | The number of Tweets to fetch from the provided space. If not provided, the value will default to the maximum of 100. | [optional][default to 100] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2SpacesIdTweetsResponse**](Get2SpacesIdTweetsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

