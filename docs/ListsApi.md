# Xbird::ListsApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_list_memberships**](ListsApi.md#get_user_list_memberships) | **GET** /2/users/{id}/list_memberships | Get a User&#39;s List Memberships |
| [**list_add_member**](ListsApi.md#list_add_member) | **POST** /2/lists/{id}/members | Add a List member |
| [**list_id_create**](ListsApi.md#list_id_create) | **POST** /2/lists | Create List |
| [**list_id_delete**](ListsApi.md#list_id_delete) | **DELETE** /2/lists/{id} | Delete List |
| [**list_id_get**](ListsApi.md#list_id_get) | **GET** /2/lists/{id} | List lookup by List ID. |
| [**list_id_update**](ListsApi.md#list_id_update) | **PUT** /2/lists/{id} | Update List. |
| [**list_remove_member**](ListsApi.md#list_remove_member) | **DELETE** /2/lists/{id}/members/{user_id} | Remove a List member |
| [**list_user_follow**](ListsApi.md#list_user_follow) | **POST** /2/users/{id}/followed_lists | Follow a List |
| [**list_user_owned_lists**](ListsApi.md#list_user_owned_lists) | **GET** /2/users/{id}/owned_lists | Get a User&#39;s Owned Lists. |
| [**list_user_pin**](ListsApi.md#list_user_pin) | **POST** /2/users/{id}/pinned_lists | Pin a List |
| [**list_user_pinned_lists**](ListsApi.md#list_user_pinned_lists) | **GET** /2/users/{id}/pinned_lists | Get a User&#39;s Pinned Lists |
| [**list_user_unfollow**](ListsApi.md#list_user_unfollow) | **DELETE** /2/users/{id}/followed_lists/{list_id} | Unfollow a List |
| [**list_user_unpin**](ListsApi.md#list_user_unpin) | **DELETE** /2/users/{id}/pinned_lists/{list_id} | Unpin a List |
| [**user_followed_lists**](ListsApi.md#user_followed_lists) | **GET** /2/users/{id}/followed_lists | Get User&#39;s Followed Lists |


## get_user_list_memberships

> <Get2UsersIdListMembershipsResponse> get_user_list_memberships(id, opts)

Get a User's List Memberships

Get a User's List Memberships.

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

api_instance = Xbird::ListsApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  list_fields: ['created_at'], # Array<String> | A comma separated list of List fields to display.
  expansions: ['owner_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'] # Array<String> | A comma separated list of User fields to display.
}

begin
  # Get a User's List Memberships
  result = api_instance.get_user_list_memberships(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->get_user_list_memberships: #{e}"
end
```

#### Using the get_user_list_memberships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdListMembershipsResponse>, Integer, Hash)> get_user_list_memberships_with_http_info(id, opts)

```ruby
begin
  # Get a User's List Memberships
  data, status_code, headers = api_instance.get_user_list_memberships_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdListMembershipsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->get_user_list_memberships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **list_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |

### Return type

[**Get2UsersIdListMembershipsResponse**](Get2UsersIdListMembershipsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_add_member

> <ListMutateResponse> list_add_member(id, opts)

Add a List member

Causes a User to become a member of a List.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the List for which to add a member.
opts = {
  list_add_user_request: Xbird::ListAddUserRequest.new({user_id: '2244994945'}) # ListAddUserRequest | 
}

begin
  # Add a List member
  result = api_instance.list_add_member(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_add_member: #{e}"
end
```

#### Using the list_add_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMutateResponse>, Integer, Hash)> list_add_member_with_http_info(id, opts)

```ruby
begin
  # Add a List member
  data, status_code, headers = api_instance.list_add_member_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMutateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_add_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List for which to add a member. |  |
| **list_add_user_request** | [**ListAddUserRequest**](ListAddUserRequest.md) |  | [optional] |

### Return type

[**ListMutateResponse**](ListMutateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## list_id_create

> <ListCreateResponse> list_id_create(opts)

Create List

Creates a new List.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
opts = {
  list_create_request: Xbird::ListCreateRequest.new({name: 'name_example'}) # ListCreateRequest | 
}

begin
  # Create List
  result = api_instance.list_id_create(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_create: #{e}"
end
```

#### Using the list_id_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCreateResponse>, Integer, Hash)> list_id_create_with_http_info(opts)

```ruby
begin
  # Create List
  data, status_code, headers = api_instance.list_id_create_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCreateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_create_request** | [**ListCreateRequest**](ListCreateRequest.md) |  | [optional] |

### Return type

[**ListCreateResponse**](ListCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## list_id_delete

> <ListDeleteResponse> list_id_delete(id)

Delete List

Delete a List that you own.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the List to delete.

begin
  # Delete List
  result = api_instance.list_id_delete(id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_delete: #{e}"
end
```

#### Using the list_id_delete_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDeleteResponse>, Integer, Hash)> list_id_delete_with_http_info(id)

```ruby
begin
  # Delete List
  data, status_code, headers = api_instance.list_id_delete_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDeleteResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List to delete. |  |

### Return type

[**ListDeleteResponse**](ListDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_id_get

> <Get2ListsIdResponse> list_id_get(id, opts)

List lookup by List ID.

Returns a List.

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

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the List.
opts = {
  list_fields: ['created_at'], # Array<String> | A comma separated list of List fields to display.
  expansions: ['owner_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'] # Array<String> | A comma separated list of User fields to display.
}

begin
  # List lookup by List ID.
  result = api_instance.list_id_get(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_get: #{e}"
end
```

#### Using the list_id_get_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2ListsIdResponse>, Integer, Hash)> list_id_get_with_http_info(id, opts)

```ruby
begin
  # List lookup by List ID.
  data, status_code, headers = api_instance.list_id_get_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2ListsIdResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List. |  |
| **list_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |

### Return type

[**Get2ListsIdResponse**](Get2ListsIdResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_id_update

> <ListUpdateResponse> list_id_update(id, opts)

Update List.

Update a List that you own.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the List to modify.
opts = {
  list_update_request: Xbird::ListUpdateRequest.new # ListUpdateRequest | 
}

begin
  # Update List.
  result = api_instance.list_id_update(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_update: #{e}"
end
```

#### Using the list_id_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUpdateResponse>, Integer, Hash)> list_id_update_with_http_info(id, opts)

```ruby
begin
  # Update List.
  data, status_code, headers = api_instance.list_id_update_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUpdateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_id_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List to modify. |  |
| **list_update_request** | [**ListUpdateRequest**](ListUpdateRequest.md) |  | [optional] |

### Return type

[**ListUpdateResponse**](ListUpdateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## list_remove_member

> <ListMutateResponse> list_remove_member(id, user_id)

Remove a List member

Causes a User to be removed from the members of a List.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the List to remove a member.
user_id = 'user_id_example' # String | The ID of User that will be removed from the List.

begin
  # Remove a List member
  result = api_instance.list_remove_member(id, user_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_remove_member: #{e}"
end
```

#### Using the list_remove_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListMutateResponse>, Integer, Hash)> list_remove_member_with_http_info(id, user_id)

```ruby
begin
  # Remove a List member
  data, status_code, headers = api_instance.list_remove_member_with_http_info(id, user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListMutateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_remove_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List to remove a member. |  |
| **user_id** | **String** | The ID of User that will be removed from the List. |  |

### Return type

[**ListMutateResponse**](ListMutateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_user_follow

> <ListFollowedResponse> list_user_follow(id, opts)

Follow a List

Causes a User to follow a List.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the authenticated source User that will follow the List.
opts = {
  list_followed_request: Xbird::ListFollowedRequest.new({list_id: '1146654567674912769'}) # ListFollowedRequest | 
}

begin
  # Follow a List
  result = api_instance.list_user_follow(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_follow: #{e}"
end
```

#### Using the list_user_follow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFollowedResponse>, Integer, Hash)> list_user_follow_with_http_info(id, opts)

```ruby
begin
  # Follow a List
  data, status_code, headers = api_instance.list_user_follow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFollowedResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_follow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that will follow the List. |  |
| **list_followed_request** | [**ListFollowedRequest**](ListFollowedRequest.md) |  | [optional] |

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## list_user_owned_lists

> <Get2UsersIdOwnedListsResponse> list_user_owned_lists(id, opts)

Get a User's Owned Lists.

Get a User's Owned Lists.

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

api_instance = Xbird::ListsApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  list_fields: ['created_at'], # Array<String> | A comma separated list of List fields to display.
  expansions: ['owner_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'] # Array<String> | A comma separated list of User fields to display.
}

begin
  # Get a User's Owned Lists.
  result = api_instance.list_user_owned_lists(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_owned_lists: #{e}"
end
```

#### Using the list_user_owned_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdOwnedListsResponse>, Integer, Hash)> list_user_owned_lists_with_http_info(id, opts)

```ruby
begin
  # Get a User's Owned Lists.
  data, status_code, headers = api_instance.list_user_owned_lists_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdOwnedListsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_owned_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **list_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |

### Return type

[**Get2UsersIdOwnedListsResponse**](Get2UsersIdOwnedListsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_user_pin

> <ListPinnedResponse> list_user_pin(id, list_pinned_request)

Pin a List

Causes a User to pin a List.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the authenticated source User that will pin the List.
list_pinned_request = Xbird::ListPinnedRequest.new({list_id: '1146654567674912769'}) # ListPinnedRequest | 

begin
  # Pin a List
  result = api_instance.list_user_pin(id, list_pinned_request)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_pin: #{e}"
end
```

#### Using the list_user_pin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPinnedResponse>, Integer, Hash)> list_user_pin_with_http_info(id, list_pinned_request)

```ruby
begin
  # Pin a List
  data, status_code, headers = api_instance.list_user_pin_with_http_info(id, list_pinned_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPinnedResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_pin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that will pin the List. |  |
| **list_pinned_request** | [**ListPinnedRequest**](ListPinnedRequest.md) |  |  |

### Return type

[**ListPinnedResponse**](ListPinnedResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## list_user_pinned_lists

> <Get2UsersIdPinnedListsResponse> list_user_pinned_lists(id, opts)

Get a User's Pinned Lists

Get a User's Pinned Lists.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the authenticated source User for whom to return results.
opts = {
  list_fields: ['created_at'], # Array<String> | A comma separated list of List fields to display.
  expansions: ['owner_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'] # Array<String> | A comma separated list of User fields to display.
}

begin
  # Get a User's Pinned Lists
  result = api_instance.list_user_pinned_lists(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_pinned_lists: #{e}"
end
```

#### Using the list_user_pinned_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdPinnedListsResponse>, Integer, Hash)> list_user_pinned_lists_with_http_info(id, opts)

```ruby
begin
  # Get a User's Pinned Lists
  data, status_code, headers = api_instance.list_user_pinned_lists_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdPinnedListsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_pinned_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User for whom to return results. |  |
| **list_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |

### Return type

[**Get2UsersIdPinnedListsResponse**](Get2UsersIdPinnedListsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_user_unfollow

> <ListFollowedResponse> list_user_unfollow(id, list_id)

Unfollow a List

Causes a User to unfollow a List.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the authenticated source User that will unfollow the List.
list_id = 'list_id_example' # String | The ID of the List to unfollow.

begin
  # Unfollow a List
  result = api_instance.list_user_unfollow(id, list_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_unfollow: #{e}"
end
```

#### Using the list_user_unfollow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFollowedResponse>, Integer, Hash)> list_user_unfollow_with_http_info(id, list_id)

```ruby
begin
  # Unfollow a List
  data, status_code, headers = api_instance.list_user_unfollow_with_http_info(id, list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFollowedResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_unfollow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that will unfollow the List. |  |
| **list_id** | **String** | The ID of the List to unfollow. |  |

### Return type

[**ListFollowedResponse**](ListFollowedResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_user_unpin

> <ListUnpinResponse> list_user_unpin(id, list_id)

Unpin a List

Causes a User to remove a pinned List.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::ListsApi.new
id = 'id_example' # String | The ID of the authenticated source User for whom to return results.
list_id = 'list_id_example' # String | The ID of the List to unpin.

begin
  # Unpin a List
  result = api_instance.list_user_unpin(id, list_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_unpin: #{e}"
end
```

#### Using the list_user_unpin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUnpinResponse>, Integer, Hash)> list_user_unpin_with_http_info(id, list_id)

```ruby
begin
  # Unpin a List
  data, status_code, headers = api_instance.list_user_unpin_with_http_info(id, list_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUnpinResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->list_user_unpin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User for whom to return results. |  |
| **list_id** | **String** | The ID of the List to unpin. |  |

### Return type

[**ListUnpinResponse**](ListUnpinResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## user_followed_lists

> <Get2UsersIdFollowedListsResponse> user_followed_lists(id, opts)

Get User's Followed Lists

Returns a User's followed Lists.

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

api_instance = Xbird::ListsApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  list_fields: ['created_at'], # Array<String> | A comma separated list of List fields to display.
  expansions: ['owner_id'], # Array<String> | A comma separated list of fields to expand.
  user_fields: ['created_at'] # Array<String> | A comma separated list of User fields to display.
}

begin
  # Get User's Followed Lists
  result = api_instance.user_followed_lists(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->user_followed_lists: #{e}"
end
```

#### Using the user_followed_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdFollowedListsResponse>, Integer, Hash)> user_followed_lists_with_http_info(id, opts)

```ruby
begin
  # Get User's Followed Lists
  data, status_code, headers = api_instance.user_followed_lists_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdFollowedListsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ListsApi->user_followed_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **list_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of List fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |

### Return type

[**Get2UsersIdFollowedListsResponse**](Get2UsersIdFollowedListsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

