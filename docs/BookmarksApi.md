# Xbird::BookmarksApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_users_id_bookmarks**](BookmarksApi.md#get_users_id_bookmarks) | **GET** /2/users/{id}/bookmarks | Bookmarks by User |
| [**post_users_id_bookmarks**](BookmarksApi.md#post_users_id_bookmarks) | **POST** /2/users/{id}/bookmarks | Add Tweet to Bookmarks |
| [**users_id_bookmarks_delete**](BookmarksApi.md#users_id_bookmarks_delete) | **DELETE** /2/users/{id}/bookmarks/{tweet_id} | Remove a bookmarked Tweet |


## get_users_id_bookmarks

> <Get2UsersIdBookmarksResponse> get_users_id_bookmarks(id, opts)

Bookmarks by User

Returns Tweet objects that have been bookmarked by the requesting User

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Xbird::BookmarksApi.new
id = 'id_example' # String | The ID of the authenticated source User for whom to return results.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Bookmarks by User
  result = api_instance.get_users_id_bookmarks(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling BookmarksApi->get_users_id_bookmarks: #{e}"
end
```

#### Using the get_users_id_bookmarks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdBookmarksResponse>, Integer, Hash)> get_users_id_bookmarks_with_http_info(id, opts)

```ruby
begin
  # Bookmarks by User
  data, status_code, headers = api_instance.get_users_id_bookmarks_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdBookmarksResponse>
rescue Xbird::ApiError => e
  puts "Error when calling BookmarksApi->get_users_id_bookmarks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User for whom to return results. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2UsersIdBookmarksResponse**](Get2UsersIdBookmarksResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## post_users_id_bookmarks

> <BookmarkMutationResponse> post_users_id_bookmarks(id, bookmark_add_request)

Add Tweet to Bookmarks

Adds a Tweet (ID in the body) to the requesting User's (in the path) bookmarks

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Xbird::BookmarksApi.new
id = 'id_example' # String | The ID of the authenticated source User for whom to add bookmarks.
bookmark_add_request = Xbird::BookmarkAddRequest.new({tweet_id: '1346889436626259968'}) # BookmarkAddRequest | 

begin
  # Add Tweet to Bookmarks
  result = api_instance.post_users_id_bookmarks(id, bookmark_add_request)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling BookmarksApi->post_users_id_bookmarks: #{e}"
end
```

#### Using the post_users_id_bookmarks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookmarkMutationResponse>, Integer, Hash)> post_users_id_bookmarks_with_http_info(id, bookmark_add_request)

```ruby
begin
  # Add Tweet to Bookmarks
  data, status_code, headers = api_instance.post_users_id_bookmarks_with_http_info(id, bookmark_add_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookmarkMutationResponse>
rescue Xbird::ApiError => e
  puts "Error when calling BookmarksApi->post_users_id_bookmarks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User for whom to add bookmarks. |  |
| **bookmark_add_request** | [**BookmarkAddRequest**](BookmarkAddRequest.md) |  |  |

### Return type

[**BookmarkMutationResponse**](BookmarkMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## users_id_bookmarks_delete

> <BookmarkMutationResponse> users_id_bookmarks_delete(id, tweet_id)

Remove a bookmarked Tweet

Removes a Tweet from the requesting User's bookmarked Tweets.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = Xbird::BookmarksApi.new
id = 'id_example' # String | The ID of the authenticated source User whose bookmark is to be removed.
tweet_id = 'tweet_id_example' # String | The ID of the Tweet that the source User is removing from bookmarks.

begin
  # Remove a bookmarked Tweet
  result = api_instance.users_id_bookmarks_delete(id, tweet_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling BookmarksApi->users_id_bookmarks_delete: #{e}"
end
```

#### Using the users_id_bookmarks_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BookmarkMutationResponse>, Integer, Hash)> users_id_bookmarks_delete_with_http_info(id, tweet_id)

```ruby
begin
  # Remove a bookmarked Tweet
  data, status_code, headers = api_instance.users_id_bookmarks_delete_with_http_info(id, tweet_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BookmarkMutationResponse>
rescue Xbird::ApiError => e
  puts "Error when calling BookmarksApi->users_id_bookmarks_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User whose bookmark is to be removed. |  |
| **tweet_id** | **String** | The ID of the Tweet that the source User is removing from bookmarks. |  |

### Return type

[**BookmarkMutationResponse**](BookmarkMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

