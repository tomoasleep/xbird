# Xbird::UsersApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**find_my_user**](UsersApi.md#find_my_user) | **GET** /2/users/me | User lookup me |
| [**find_user_by_id**](UsersApi.md#find_user_by_id) | **GET** /2/users/{id} | User lookup by ID |
| [**find_user_by_username**](UsersApi.md#find_user_by_username) | **GET** /2/users/by/username/{username} | User lookup by username |
| [**find_users_by_id**](UsersApi.md#find_users_by_id) | **GET** /2/users | User lookup by IDs |
| [**find_users_by_username**](UsersApi.md#find_users_by_username) | **GET** /2/users/by | User lookup by usernames |
| [**list_get_followers**](UsersApi.md#list_get_followers) | **GET** /2/lists/{id}/followers | Returns User objects that follow a List by the provided List ID |
| [**list_get_members**](UsersApi.md#list_get_members) | **GET** /2/lists/{id}/members | Returns User objects that are members of a List by the provided List ID. |
| [**tweets_id_liking_users**](UsersApi.md#tweets_id_liking_users) | **GET** /2/tweets/{id}/liking_users | Returns User objects that have liked the provided Tweet ID |
| [**tweets_id_retweeting_users**](UsersApi.md#tweets_id_retweeting_users) | **GET** /2/tweets/{id}/retweeted_by | Returns User objects that have retweeted the provided Tweet ID |
| [**users_id_block**](UsersApi.md#users_id_block) | **POST** /2/users/{id}/blocking | Block User by User ID |
| [**users_id_blocking**](UsersApi.md#users_id_blocking) | **GET** /2/users/{id}/blocking | Returns User objects that are blocked by provided User ID |
| [**users_id_follow**](UsersApi.md#users_id_follow) | **POST** /2/users/{id}/following | Follow User |
| [**users_id_followers**](UsersApi.md#users_id_followers) | **GET** /2/users/{id}/followers | Followers by User ID |
| [**users_id_following**](UsersApi.md#users_id_following) | **GET** /2/users/{id}/following | Following by User ID |
| [**users_id_mute**](UsersApi.md#users_id_mute) | **POST** /2/users/{id}/muting | Mute User by User ID. |
| [**users_id_muting**](UsersApi.md#users_id_muting) | **GET** /2/users/{id}/muting | Returns User objects that are muted by the provided User ID |
| [**users_id_unblock**](UsersApi.md#users_id_unblock) | **DELETE** /2/users/{source_user_id}/blocking/{target_user_id} | Unblock User by User ID |
| [**users_id_unfollow**](UsersApi.md#users_id_unfollow) | **DELETE** /2/users/{source_user_id}/following/{target_user_id} | Unfollow User |
| [**users_id_unmute**](UsersApi.md#users_id_unmute) | **DELETE** /2/users/{source_user_id}/muting/{target_user_id} | Unmute User by User ID |


## find_my_user

> <Get2UsersMeResponse> find_my_user(opts)

User lookup me

This endpoint returns information about the requesting User.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
opts = {
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # User lookup me
  result = api_instance.find_my_user(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_my_user: #{e}"
end
```

#### Using the find_my_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersMeResponse>, Integer, Hash)> find_my_user_with_http_info(opts)

```ruby
begin
  # User lookup me
  data, status_code, headers = api_instance.find_my_user_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersMeResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_my_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersMeResponse**](Get2UsersMeResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_user_by_id

> <Get2UsersIdResponse> find_user_by_id(id, opts)

User lookup by ID

This endpoint returns information about a User. Specify User by ID.

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

api_instance = Xbird::UsersApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # User lookup by ID
  result = api_instance.find_user_by_id(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_user_by_id: #{e}"
end
```

#### Using the find_user_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdResponse>, Integer, Hash)> find_user_by_id_with_http_info(id, opts)

```ruby
begin
  # User lookup by ID
  data, status_code, headers = api_instance.find_user_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_user_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersIdResponse**](Get2UsersIdResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_user_by_username

> <Get2UsersByUsernameUsernameResponse> find_user_by_username(username, opts)

User lookup by username

This endpoint returns information about a User. Specify User by username.

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

api_instance = Xbird::UsersApi.new
username = 'TwitterDev' # String | A username.
opts = {
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # User lookup by username
  result = api_instance.find_user_by_username(username, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_user_by_username: #{e}"
end
```

#### Using the find_user_by_username_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersByUsernameUsernameResponse>, Integer, Hash)> find_user_by_username_with_http_info(username, opts)

```ruby
begin
  # User lookup by username
  data, status_code, headers = api_instance.find_user_by_username_with_http_info(username, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersByUsernameUsernameResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_user_by_username_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **username** | **String** | A username. |  |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersByUsernameUsernameResponse**](Get2UsersByUsernameUsernameResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_users_by_id

> <Get2UsersResponse> find_users_by_id(ids, opts)

User lookup by IDs

This endpoint returns information about Users. Specify Users by their ID.

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

api_instance = Xbird::UsersApi.new
ids = ['2244994945'] # Array<String> | A list of User IDs, comma-separated. You can specify up to 100 IDs.
opts = {
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # User lookup by IDs
  result = api_instance.find_users_by_id(ids, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_users_by_id: #{e}"
end
```

#### Using the find_users_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersResponse>, Integer, Hash)> find_users_by_id_with_http_info(ids, opts)

```ruby
begin
  # User lookup by IDs
  data, status_code, headers = api_instance.find_users_by_id_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_users_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | A list of User IDs, comma-separated. You can specify up to 100 IDs. |  |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersResponse**](Get2UsersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_users_by_username

> <Get2UsersByResponse> find_users_by_username(usernames, opts)

User lookup by usernames

This endpoint returns information about Users. Specify Users by their username.

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

api_instance = Xbird::UsersApi.new
usernames = ['inner_example'] # Array<String> | A list of usernames, comma-separated.
opts = {
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # User lookup by usernames
  result = api_instance.find_users_by_username(usernames, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_users_by_username: #{e}"
end
```

#### Using the find_users_by_username_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersByResponse>, Integer, Hash)> find_users_by_username_with_http_info(usernames, opts)

```ruby
begin
  # User lookup by usernames
  data, status_code, headers = api_instance.find_users_by_username_with_http_info(usernames, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersByResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->find_users_by_username_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usernames** | [**Array&lt;String&gt;**](String.md) | A list of usernames, comma-separated. |  |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersByResponse**](Get2UsersByResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_get_followers

> <Get2ListsIdFollowersResponse> list_get_followers(id, opts)

Returns User objects that follow a List by the provided List ID

Returns a list of Users that follow a List by the provided List ID

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

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | The ID of the List.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Returns User objects that follow a List by the provided List ID
  result = api_instance.list_get_followers(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->list_get_followers: #{e}"
end
```

#### Using the list_get_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2ListsIdFollowersResponse>, Integer, Hash)> list_get_followers_with_http_info(id, opts)

```ruby
begin
  # Returns User objects that follow a List by the provided List ID
  data, status_code, headers = api_instance.list_get_followers_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2ListsIdFollowersResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->list_get_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2ListsIdFollowersResponse**](Get2ListsIdFollowersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_get_members

> <Get2ListsIdMembersResponse> list_get_members(id, opts)

Returns User objects that are members of a List by the provided List ID.

Returns a list of Users that are members of a List by the provided List ID.

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

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | The ID of the List.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Returns User objects that are members of a List by the provided List ID.
  result = api_instance.list_get_members(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->list_get_members: #{e}"
end
```

#### Using the list_get_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2ListsIdMembersResponse>, Integer, Hash)> list_get_members_with_http_info(id, opts)

```ruby
begin
  # Returns User objects that are members of a List by the provided List ID.
  data, status_code, headers = api_instance.list_get_members_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2ListsIdMembersResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->list_get_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2ListsIdMembersResponse**](Get2ListsIdMembersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## tweets_id_liking_users

> <Get2TweetsIdLikingUsersResponse> tweets_id_liking_users(id, opts)

Returns User objects that have liked the provided Tweet ID

Returns a list of Users that have liked the provided Tweet ID

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

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | A single Tweet ID.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Returns User objects that have liked the provided Tweet ID
  result = api_instance.tweets_id_liking_users(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->tweets_id_liking_users: #{e}"
end
```

#### Using the tweets_id_liking_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsIdLikingUsersResponse>, Integer, Hash)> tweets_id_liking_users_with_http_info(id, opts)

```ruby
begin
  # Returns User objects that have liked the provided Tweet ID
  data, status_code, headers = api_instance.tweets_id_liking_users_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsIdLikingUsersResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->tweets_id_liking_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A single Tweet ID. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2TweetsIdLikingUsersResponse**](Get2TweetsIdLikingUsersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## tweets_id_retweeting_users

> <Get2TweetsIdRetweetedByResponse> tweets_id_retweeting_users(id, opts)

Returns User objects that have retweeted the provided Tweet ID

Returns a list of Users that have retweeted the provided Tweet ID

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

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | A single Tweet ID.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Returns User objects that have retweeted the provided Tweet ID
  result = api_instance.tweets_id_retweeting_users(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->tweets_id_retweeting_users: #{e}"
end
```

#### Using the tweets_id_retweeting_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsIdRetweetedByResponse>, Integer, Hash)> tweets_id_retweeting_users_with_http_info(id, opts)

```ruby
begin
  # Returns User objects that have retweeted the provided Tweet ID
  data, status_code, headers = api_instance.tweets_id_retweeting_users_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsIdRetweetedByResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->tweets_id_retweeting_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A single Tweet ID. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2TweetsIdRetweetedByResponse**](Get2TweetsIdRetweetedByResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_block

> <BlockUserMutationResponse> users_id_block(id, block_user_request)

Block User by User ID

Causes the User (in the path) to block the target User. The User (in the path) must match the User context authorizing the request

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | The ID of the authenticated source User that is requesting to block the target User.
block_user_request = Xbird::BlockUserRequest.new({target_user_id: '2244994945'}) # BlockUserRequest | 

begin
  # Block User by User ID
  result = api_instance.users_id_block(id, block_user_request)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_block: #{e}"
end
```

#### Using the users_id_block_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockUserMutationResponse>, Integer, Hash)> users_id_block_with_http_info(id, block_user_request)

```ruby
begin
  # Block User by User ID
  data, status_code, headers = api_instance.users_id_block_with_http_info(id, block_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockUserMutationResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_block_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that is requesting to block the target User. |  |
| **block_user_request** | [**BlockUserRequest**](BlockUserRequest.md) |  |  |

### Return type

[**BlockUserMutationResponse**](BlockUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## users_id_blocking

> <Get2UsersIdBlockingResponse> users_id_blocking(id, opts)

Returns User objects that are blocked by provided User ID

Returns a list of Users that are blocked by the provided User ID

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | The ID of the authenticated source User for whom to return results.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Returns User objects that are blocked by provided User ID
  result = api_instance.users_id_blocking(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_blocking: #{e}"
end
```

#### Using the users_id_blocking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdBlockingResponse>, Integer, Hash)> users_id_blocking_with_http_info(id, opts)

```ruby
begin
  # Returns User objects that are blocked by provided User ID
  data, status_code, headers = api_instance.users_id_blocking_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdBlockingResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_blocking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User for whom to return results. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersIdBlockingResponse**](Get2UsersIdBlockingResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_follow

> <UsersFollowingCreateResponse> users_id_follow(id, opts)

Follow User

Causes the User(in the path) to follow, or “request to follow” for protected Users, the target User. The User(in the path) must match the User context authorizing the request

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | The ID of the authenticated source User that is requesting to follow the target User.
opts = {
  users_following_create_request: Xbird::UsersFollowingCreateRequest.new({target_user_id: '2244994945'}) # UsersFollowingCreateRequest | 
}

begin
  # Follow User
  result = api_instance.users_id_follow(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_follow: #{e}"
end
```

#### Using the users_id_follow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersFollowingCreateResponse>, Integer, Hash)> users_id_follow_with_http_info(id, opts)

```ruby
begin
  # Follow User
  data, status_code, headers = api_instance.users_id_follow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersFollowingCreateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_follow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that is requesting to follow the target User. |  |
| **users_following_create_request** | [**UsersFollowingCreateRequest**](UsersFollowingCreateRequest.md) |  | [optional] |

### Return type

[**UsersFollowingCreateResponse**](UsersFollowingCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## users_id_followers

> <Get2UsersIdFollowersResponse> users_id_followers(id, opts)

Followers by User ID

Returns a list of Users who are followers of the specified User ID.

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

api_instance = Xbird::UsersApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Followers by User ID
  result = api_instance.users_id_followers(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_followers: #{e}"
end
```

#### Using the users_id_followers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdFollowersResponse>, Integer, Hash)> users_id_followers_with_http_info(id, opts)

```ruby
begin
  # Followers by User ID
  data, status_code, headers = api_instance.users_id_followers_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdFollowersResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_followers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersIdFollowersResponse**](Get2UsersIdFollowersResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_following

> <Get2UsersIdFollowingResponse> users_id_following(id, opts)

Following by User ID

Returns a list of Users that are being followed by the provided User ID

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

api_instance = Xbird::UsersApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Following by User ID
  result = api_instance.users_id_following(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_following: #{e}"
end
```

#### Using the users_id_following_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdFollowingResponse>, Integer, Hash)> users_id_following_with_http_info(id, opts)

```ruby
begin
  # Following by User ID
  data, status_code, headers = api_instance.users_id_following_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdFollowingResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_following_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersIdFollowingResponse**](Get2UsersIdFollowingResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_mute

> <MuteUserMutationResponse> users_id_mute(id, opts)

Mute User by User ID.

Causes the User (in the path) to mute the target User. The User (in the path) must match the User context authorizing the request.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | The ID of the authenticated source User that is requesting to mute the target User.
opts = {
  mute_user_request: Xbird::MuteUserRequest.new({target_user_id: '2244994945'}) # MuteUserRequest | 
}

begin
  # Mute User by User ID.
  result = api_instance.users_id_mute(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_mute: #{e}"
end
```

#### Using the users_id_mute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MuteUserMutationResponse>, Integer, Hash)> users_id_mute_with_http_info(id, opts)

```ruby
begin
  # Mute User by User ID.
  data, status_code, headers = api_instance.users_id_mute_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MuteUserMutationResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_mute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that is requesting to mute the target User. |  |
| **mute_user_request** | [**MuteUserRequest**](MuteUserRequest.md) |  | [optional] |

### Return type

[**MuteUserMutationResponse**](MuteUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## users_id_muting

> <Get2UsersIdMutingResponse> users_id_muting(id, opts)

Returns User objects that are muted by the provided User ID

Returns a list of Users that are muted by the provided User ID

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
id = 'id_example' # String | The ID of the authenticated source User for whom to return results.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  expansions: ['pinned_tweet_id'], # Array<String> | A comma separated list of fields to expand.
  tweet_fields: ['attachments'] # Array<String> | A comma separated list of Tweet fields to display.
}

begin
  # Returns User objects that are muted by the provided User ID
  result = api_instance.users_id_muting(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_muting: #{e}"
end
```

#### Using the users_id_muting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdMutingResponse>, Integer, Hash)> users_id_muting_with_http_info(id, opts)

```ruby
begin
  # Returns User objects that are muted by the provided User ID
  data, status_code, headers = api_instance.users_id_muting_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdMutingResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_muting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User for whom to return results. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |

### Return type

[**Get2UsersIdMutingResponse**](Get2UsersIdMutingResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_unblock

> <BlockUserMutationResponse> users_id_unblock(source_user_id, target_user_id)

Unblock User by User ID

Causes the source User to unblock the target User. The source User must match the User context authorizing the request

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
source_user_id = 'source_user_id_example' # String | The ID of the authenticated source User that is requesting to unblock the target User.
target_user_id = 'target_user_id_example' # String | The ID of the User that the source User is requesting to unblock.

begin
  # Unblock User by User ID
  result = api_instance.users_id_unblock(source_user_id, target_user_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_unblock: #{e}"
end
```

#### Using the users_id_unblock_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockUserMutationResponse>, Integer, Hash)> users_id_unblock_with_http_info(source_user_id, target_user_id)

```ruby
begin
  # Unblock User by User ID
  data, status_code, headers = api_instance.users_id_unblock_with_http_info(source_user_id, target_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockUserMutationResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_unblock_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_user_id** | **String** | The ID of the authenticated source User that is requesting to unblock the target User. |  |
| **target_user_id** | **String** | The ID of the User that the source User is requesting to unblock. |  |

### Return type

[**BlockUserMutationResponse**](BlockUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_unfollow

> <UsersFollowingDeleteResponse> users_id_unfollow(source_user_id, target_user_id)

Unfollow User

Causes the source User to unfollow the target User. The source User must match the User context authorizing the request

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
source_user_id = 'source_user_id_example' # String | The ID of the authenticated source User that is requesting to unfollow the target User.
target_user_id = 'target_user_id_example' # String | The ID of the User that the source User is requesting to unfollow.

begin
  # Unfollow User
  result = api_instance.users_id_unfollow(source_user_id, target_user_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_unfollow: #{e}"
end
```

#### Using the users_id_unfollow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersFollowingDeleteResponse>, Integer, Hash)> users_id_unfollow_with_http_info(source_user_id, target_user_id)

```ruby
begin
  # Unfollow User
  data, status_code, headers = api_instance.users_id_unfollow_with_http_info(source_user_id, target_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersFollowingDeleteResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_unfollow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_user_id** | **String** | The ID of the authenticated source User that is requesting to unfollow the target User. |  |
| **target_user_id** | **String** | The ID of the User that the source User is requesting to unfollow. |  |

### Return type

[**UsersFollowingDeleteResponse**](UsersFollowingDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_unmute

> <MuteUserMutationResponse> users_id_unmute(source_user_id, target_user_id)

Unmute User by User ID

Causes the source User to unmute the target User. The source User must match the User context authorizing the request

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::UsersApi.new
source_user_id = 'source_user_id_example' # String | The ID of the authenticated source User that is requesting to unmute the target User.
target_user_id = 'target_user_id_example' # String | The ID of the User that the source User is requesting to unmute.

begin
  # Unmute User by User ID
  result = api_instance.users_id_unmute(source_user_id, target_user_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_unmute: #{e}"
end
```

#### Using the users_id_unmute_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MuteUserMutationResponse>, Integer, Hash)> users_id_unmute_with_http_info(source_user_id, target_user_id)

```ruby
begin
  # Unmute User by User ID
  data, status_code, headers = api_instance.users_id_unmute_with_http_info(source_user_id, target_user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MuteUserMutationResponse>
rescue Xbird::ApiError => e
  puts "Error when calling UsersApi->users_id_unmute_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source_user_id** | **String** | The ID of the authenticated source User that is requesting to unmute the target User. |  |
| **target_user_id** | **String** | The ID of the User that the source User is requesting to unmute. |  |

### Return type

[**MuteUserMutationResponse**](MuteUserMutationResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

