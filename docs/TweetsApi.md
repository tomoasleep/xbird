# Xbird::TweetsApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_or_delete_rules**](TweetsApi.md#add_or_delete_rules) | **POST** /2/tweets/search/stream/rules | Add/Delete rules |
| [**create_tweet**](TweetsApi.md#create_tweet) | **POST** /2/tweets | Creation of a Tweet |
| [**delete_tweet_by_id**](TweetsApi.md#delete_tweet_by_id) | **DELETE** /2/tweets/{id} | Tweet delete by Tweet ID |
| [**find_tweet_by_id**](TweetsApi.md#find_tweet_by_id) | **GET** /2/tweets/{id} | Tweet lookup by Tweet ID |
| [**find_tweets_by_id**](TweetsApi.md#find_tweets_by_id) | **GET** /2/tweets | Tweet lookup by Tweet IDs |
| [**find_tweets_that_quote_a_tweet**](TweetsApi.md#find_tweets_that_quote_a_tweet) | **GET** /2/tweets/{id}/quote_tweets | Retrieve Tweets that quote a Tweet. |
| [**get_rules**](TweetsApi.md#get_rules) | **GET** /2/tweets/search/stream/rules | Rules lookup |
| [**get_tweets_firehose_stream**](TweetsApi.md#get_tweets_firehose_stream) | **GET** /2/tweets/firehose/stream | Firehose stream |
| [**get_tweets_sample10_stream**](TweetsApi.md#get_tweets_sample10_stream) | **GET** /2/tweets/sample10/stream | Sample 10% stream |
| [**hide_reply_by_id**](TweetsApi.md#hide_reply_by_id) | **PUT** /2/tweets/{tweet_id}/hidden | Hide replies |
| [**lists_id_tweets**](TweetsApi.md#lists_id_tweets) | **GET** /2/lists/{id}/tweets | List Tweets timeline by List ID. |
| [**sample_stream**](TweetsApi.md#sample_stream) | **GET** /2/tweets/sample/stream | Sample stream |
| [**search_stream**](TweetsApi.md#search_stream) | **GET** /2/tweets/search/stream | Filtered stream |
| [**space_buyers**](TweetsApi.md#space_buyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space |
| [**space_tweets**](TweetsApi.md#space_tweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space. |
| [**tweet_counts_full_archive_search**](TweetsApi.md#tweet_counts_full_archive_search) | **GET** /2/tweets/counts/all | Full archive search counts |
| [**tweet_counts_recent_search**](TweetsApi.md#tweet_counts_recent_search) | **GET** /2/tweets/counts/recent | Recent search counts |
| [**tweets_fullarchive_search**](TweetsApi.md#tweets_fullarchive_search) | **GET** /2/tweets/search/all | Full-archive search |
| [**tweets_recent_search**](TweetsApi.md#tweets_recent_search) | **GET** /2/tweets/search/recent | Recent search |
| [**users_id_like**](TweetsApi.md#users_id_like) | **POST** /2/users/{id}/likes | Causes the User (in the path) to like the specified Tweet |
| [**users_id_liked_tweets**](TweetsApi.md#users_id_liked_tweets) | **GET** /2/users/{id}/liked_tweets | Returns Tweet objects liked by the provided User ID |
| [**users_id_mentions**](TweetsApi.md#users_id_mentions) | **GET** /2/users/{id}/mentions | User mention timeline by User ID |
| [**users_id_retweets**](TweetsApi.md#users_id_retweets) | **POST** /2/users/{id}/retweets | Causes the User (in the path) to retweet the specified Tweet. |
| [**users_id_timeline**](TweetsApi.md#users_id_timeline) | **GET** /2/users/{id}/timelines/reverse_chronological | User home timeline by User ID |
| [**users_id_tweets**](TweetsApi.md#users_id_tweets) | **GET** /2/users/{id}/tweets | User Tweets timeline by User ID |
| [**users_id_unlike**](TweetsApi.md#users_id_unlike) | **DELETE** /2/users/{id}/likes/{tweet_id} | Causes the User (in the path) to unlike the specified Tweet |
| [**users_id_unretweets**](TweetsApi.md#users_id_unretweets) | **DELETE** /2/users/{id}/retweets/{source_tweet_id} | Causes the User (in the path) to unretweet the specified Tweet |


## add_or_delete_rules

> <AddOrDeleteRulesResponse> add_or_delete_rules(add_or_delete_rules_request, opts)

Add/Delete rules

Add or delete rules from a User's active rule set. Users can provide unique, optionally tagged rules to add. Users can delete their entire rule set or a subset specified by rule ids or values.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
add_or_delete_rules_request = Xbird::AddRulesRequest.new({add: [Xbird::RuleNoId.new({value: 'coffee -is:retweet'})]}) # AddOrDeleteRulesRequest | 
opts = {
  dry_run: true # Boolean | Dry Run can be used with both the add and delete action, with the expected result given, but without actually taking any action in the system (meaning the end state will always be as it was when the request was submitted). This is particularly useful to validate rule changes.
}

begin
  # Add/Delete rules
  result = api_instance.add_or_delete_rules(add_or_delete_rules_request, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->add_or_delete_rules: #{e}"
end
```

#### Using the add_or_delete_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrDeleteRulesResponse>, Integer, Hash)> add_or_delete_rules_with_http_info(add_or_delete_rules_request, opts)

```ruby
begin
  # Add/Delete rules
  data, status_code, headers = api_instance.add_or_delete_rules_with_http_info(add_or_delete_rules_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrDeleteRulesResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->add_or_delete_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_or_delete_rules_request** | [**AddOrDeleteRulesRequest**](AddOrDeleteRulesRequest.md) |  |  |
| **dry_run** | **Boolean** | Dry Run can be used with both the add and delete action, with the expected result given, but without actually taking any action in the system (meaning the end state will always be as it was when the request was submitted). This is particularly useful to validate rule changes. | [optional] |

### Return type

[**AddOrDeleteRulesResponse**](AddOrDeleteRulesResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## create_tweet

> <TweetCreateResponse> create_tweet(tweet_create_request)

Creation of a Tweet

Causes the User to create a Tweet under the authorized account.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
tweet_create_request = Xbird::TweetCreateRequest.new # TweetCreateRequest | 

begin
  # Creation of a Tweet
  result = api_instance.create_tweet(tweet_create_request)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->create_tweet: #{e}"
end
```

#### Using the create_tweet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TweetCreateResponse>, Integer, Hash)> create_tweet_with_http_info(tweet_create_request)

```ruby
begin
  # Creation of a Tweet
  data, status_code, headers = api_instance.create_tweet_with_http_info(tweet_create_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TweetCreateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->create_tweet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tweet_create_request** | [**TweetCreateRequest**](TweetCreateRequest.md) |  |  |

### Return type

[**TweetCreateResponse**](TweetCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_tweet_by_id

> <TweetDeleteResponse> delete_tweet_by_id(id)

Tweet delete by Tweet ID

Delete specified Tweet (in the path) by ID.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | The ID of the Tweet to be deleted.

begin
  # Tweet delete by Tweet ID
  result = api_instance.delete_tweet_by_id(id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->delete_tweet_by_id: #{e}"
end
```

#### Using the delete_tweet_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TweetDeleteResponse>, Integer, Hash)> delete_tweet_by_id_with_http_info(id)

```ruby
begin
  # Tweet delete by Tweet ID
  data, status_code, headers = api_instance.delete_tweet_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TweetDeleteResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->delete_tweet_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Tweet to be deleted. |  |

### Return type

[**TweetDeleteResponse**](TweetDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_tweet_by_id

> <Get2TweetsIdResponse> find_tweet_by_id(id, opts)

Tweet lookup by Tweet ID

Returns a variety of information about the Tweet specified by the requested ID.

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

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | A single Tweet ID.
opts = {
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Tweet lookup by Tweet ID
  result = api_instance.find_tweet_by_id(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->find_tweet_by_id: #{e}"
end
```

#### Using the find_tweet_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsIdResponse>, Integer, Hash)> find_tweet_by_id_with_http_info(id, opts)

```ruby
begin
  # Tweet lookup by Tweet ID
  data, status_code, headers = api_instance.find_tweet_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsIdResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->find_tweet_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A single Tweet ID. |  |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2TweetsIdResponse**](Get2TweetsIdResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_tweets_by_id

> <Get2TweetsResponse> find_tweets_by_id(ids, opts)

Tweet lookup by Tweet IDs

Returns a variety of information about the Tweet specified by the requested ID.

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

api_instance = Xbird::TweetsApi.new
ids = ['1346889436626259968'] # Array<String> | A comma separated list of Tweet IDs. Up to 100 are allowed in a single request.
opts = {
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Tweet lookup by Tweet IDs
  result = api_instance.find_tweets_by_id(ids, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->find_tweets_by_id: #{e}"
end
```

#### Using the find_tweets_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsResponse>, Integer, Hash)> find_tweets_by_id_with_http_info(ids, opts)

```ruby
begin
  # Tweet lookup by Tweet IDs
  data, status_code, headers = api_instance.find_tweets_by_id_with_http_info(ids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->find_tweets_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet IDs. Up to 100 are allowed in a single request. |  |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2TweetsResponse**](Get2TweetsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## find_tweets_that_quote_a_tweet

> <Get2TweetsIdQuoteTweetsResponse> find_tweets_that_quote_a_tweet(id, opts)

Retrieve Tweets that quote a Tweet.

Returns a variety of information about each Tweet that quotes the Tweet specified by the requested ID.

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

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | A single Tweet ID.
opts = {
  max_results: 56, # Integer | The maximum number of results to be returned.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get a specified 'page' of results.
  exclude: ['replies'], # Array<String> | The set of entities to exclude (e.g. 'replies' or 'retweets').
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Retrieve Tweets that quote a Tweet.
  result = api_instance.find_tweets_that_quote_a_tweet(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->find_tweets_that_quote_a_tweet: #{e}"
end
```

#### Using the find_tweets_that_quote_a_tweet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsIdQuoteTweetsResponse>, Integer, Hash)> find_tweets_that_quote_a_tweet_with_http_info(id, opts)

```ruby
begin
  # Retrieve Tweets that quote a Tweet.
  data, status_code, headers = api_instance.find_tweets_that_quote_a_tweet_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsIdQuoteTweetsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->find_tweets_that_quote_a_tweet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A single Tweet ID. |  |
| **max_results** | **Integer** | The maximum number of results to be returned. | [optional][default to 10] |
| **pagination_token** | **String** | This parameter is used to get a specified &#39;page&#39; of results. | [optional] |
| **exclude** | [**Array&lt;String&gt;**](String.md) | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2TweetsIdQuoteTweetsResponse**](Get2TweetsIdQuoteTweetsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_rules

> <RulesLookupResponse> get_rules(opts)

Rules lookup

Returns rules from a User's active rule set. Users can fetch all of their rules or a subset, specified by the provided rule ids.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
opts = {
  ids: ['120897978112909812'], # Array<String> | A comma-separated list of Rule IDs.
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example' # String | This value is populated by passing the 'next_token' returned in a request to paginate through results.
}

begin
  # Rules lookup
  result = api_instance.get_rules(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->get_rules: #{e}"
end
```

#### Using the get_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RulesLookupResponse>, Integer, Hash)> get_rules_with_http_info(opts)

```ruby
begin
  # Rules lookup
  data, status_code, headers = api_instance.get_rules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RulesLookupResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->get_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;String&gt;**](String.md) | A comma-separated list of Rule IDs. | [optional] |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 1000] |
| **pagination_token** | **String** | This value is populated by passing the &#39;next_token&#39; returned in a request to paginate through results. | [optional] |

### Return type

[**RulesLookupResponse**](RulesLookupResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_tweets_firehose_stream

> <StreamingTweetResponse> get_tweets_firehose_stream(partition, opts)

Firehose stream

Streams 100% of public Tweets.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
partition = 56 # Integer | The partition number.
opts = {
  backfill_minutes: 56, # Integer | The number of minutes of backfill requested.
  start_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided.
  end_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Firehose stream
  result = api_instance.get_tweets_firehose_stream(partition, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->get_tweets_firehose_stream: #{e}"
end
```

#### Using the get_tweets_firehose_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StreamingTweetResponse>, Integer, Hash)> get_tweets_firehose_stream_with_http_info(partition, opts)

```ruby
begin
  # Firehose stream
  data, status_code, headers = api_instance.get_tweets_firehose_stream_with_http_info(partition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StreamingTweetResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->get_tweets_firehose_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partition** | **Integer** | The partition number. |  |
| **backfill_minutes** | **Integer** | The number of minutes of backfill requested. | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**StreamingTweetResponse**](StreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_tweets_sample10_stream

> <Get2TweetsSample10StreamResponse> get_tweets_sample10_stream(partition, opts)

Sample 10% stream

Streams a deterministic 10% of public Tweets.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
partition = 56 # Integer | The partition number.
opts = {
  backfill_minutes: 56, # Integer | The number of minutes of backfill requested.
  start_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided.
  end_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Sample 10% stream
  result = api_instance.get_tweets_sample10_stream(partition, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->get_tweets_sample10_stream: #{e}"
end
```

#### Using the get_tweets_sample10_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsSample10StreamResponse>, Integer, Hash)> get_tweets_sample10_stream_with_http_info(partition, opts)

```ruby
begin
  # Sample 10% stream
  data, status_code, headers = api_instance.get_tweets_sample10_stream_with_http_info(partition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsSample10StreamResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->get_tweets_sample10_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partition** | **Integer** | The partition number. |  |
| **backfill_minutes** | **Integer** | The number of minutes of backfill requested. | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp to which the Tweets will be provided. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2TweetsSample10StreamResponse**](Get2TweetsSample10StreamResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## hide_reply_by_id

> <TweetHideResponse> hide_reply_by_id(tweet_id, opts)

Hide replies

Hides or unhides a reply to an owned conversation.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
tweet_id = 'tweet_id_example' # String | The ID of the reply that you want to hide or unhide.
opts = {
  tweet_hide_request: Xbird::TweetHideRequest.new({hidden: false}) # TweetHideRequest | 
}

begin
  # Hide replies
  result = api_instance.hide_reply_by_id(tweet_id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->hide_reply_by_id: #{e}"
end
```

#### Using the hide_reply_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TweetHideResponse>, Integer, Hash)> hide_reply_by_id_with_http_info(tweet_id, opts)

```ruby
begin
  # Hide replies
  data, status_code, headers = api_instance.hide_reply_by_id_with_http_info(tweet_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TweetHideResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->hide_reply_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tweet_id** | **String** | The ID of the reply that you want to hide or unhide. |  |
| **tweet_hide_request** | [**TweetHideRequest**](TweetHideRequest.md) |  | [optional] |

### Return type

[**TweetHideResponse**](TweetHideResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## lists_id_tweets

> <Get2ListsIdTweetsResponse> lists_id_tweets(id, opts)

List Tweets timeline by List ID.

Returns a list of Tweets associated with the provided List ID.

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

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | The ID of the List.
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
  # List Tweets timeline by List ID.
  result = api_instance.lists_id_tweets(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->lists_id_tweets: #{e}"
end
```

#### Using the lists_id_tweets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2ListsIdTweetsResponse>, Integer, Hash)> lists_id_tweets_with_http_info(id, opts)

```ruby
begin
  # List Tweets timeline by List ID.
  data, status_code, headers = api_instance.lists_id_tweets_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2ListsIdTweetsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->lists_id_tweets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the List. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional][default to 100] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2ListsIdTweetsResponse**](Get2ListsIdTweetsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## sample_stream

> <StreamingTweetResponse> sample_stream(opts)

Sample stream

Streams a deterministic 1% of public Tweets.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
opts = {
  backfill_minutes: 56, # Integer | The number of minutes of backfill requested.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Sample stream
  result = api_instance.sample_stream(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->sample_stream: #{e}"
end
```

#### Using the sample_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StreamingTweetResponse>, Integer, Hash)> sample_stream_with_http_info(opts)

```ruby
begin
  # Sample stream
  data, status_code, headers = api_instance.sample_stream_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StreamingTweetResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->sample_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_minutes** | **Integer** | The number of minutes of backfill requested. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**StreamingTweetResponse**](StreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## search_stream

> <FilteredStreamingTweetResponse> search_stream(opts)

Filtered stream

Streams Tweets matching the stream's active rule set.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
opts = {
  backfill_minutes: 56, # Integer | The number of minutes of backfill requested.
  start_time: Time.parse('2021-02-01T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided.
  end_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Filtered stream
  result = api_instance.search_stream(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->search_stream: #{e}"
end
```

#### Using the search_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FilteredStreamingTweetResponse>, Integer, Hash)> search_stream_with_http_info(opts)

```ruby
begin
  # Filtered stream
  data, status_code, headers = api_instance.search_stream_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FilteredStreamingTweetResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->search_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_minutes** | **Integer** | The number of minutes of backfill requested. | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**FilteredStreamingTweetResponse**](FilteredStreamingTweetResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

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

api_instance = Xbird::TweetsApi.new
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
  puts "Error when calling TweetsApi->space_buyers: #{e}"
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
  puts "Error when calling TweetsApi->space_buyers_with_http_info: #{e}"
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

api_instance = Xbird::TweetsApi.new
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
  puts "Error when calling TweetsApi->space_tweets: #{e}"
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
  puts "Error when calling TweetsApi->space_tweets_with_http_info: #{e}"
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


## tweet_counts_full_archive_search

> <Get2TweetsCountsAllResponse> tweet_counts_full_archive_search(query, opts)

Full archive search counts

Returns Tweet Counts that match a search query.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
query = '(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet' # String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
opts = {
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  since_id: 'since_id_example', # String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  until_id: 'until_id_example', # String | Returns results with a Tweet ID less than (that is, older than) the specified ID.
  next_token: 'next_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  granularity: 'minute', # String | The granularity for the search counts results.
  search_count_fields: ['end'] # Array<String> | A comma separated list of SearchCount fields to display.
}

begin
  # Full archive search counts
  result = api_instance.tweet_counts_full_archive_search(query, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweet_counts_full_archive_search: #{e}"
end
```

#### Using the tweet_counts_full_archive_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsCountsAllResponse>, Integer, Hash)> tweet_counts_full_archive_search_with_http_info(query, opts)

```ruby
begin
  # Full archive search counts
  data, status_code, headers = api_instance.tweet_counts_full_archive_search_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsCountsAllResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweet_counts_full_archive_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. |  |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] |
| **since_id** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] |
| **until_id** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] |
| **next_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **granularity** | **String** | The granularity for the search counts results. | [optional][default to &#39;hour&#39;] |
| **search_count_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of SearchCount fields to display. | [optional] |

### Return type

[**Get2TweetsCountsAllResponse**](Get2TweetsCountsAllResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## tweet_counts_recent_search

> <Get2TweetsCountsRecentResponse> tweet_counts_recent_search(query, opts)

Recent search counts

Returns Tweet Counts from the last 7 days that match a search query.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
query = '(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet' # String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
opts = {
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  since_id: 'since_id_example', # String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  until_id: 'until_id_example', # String | Returns results with a Tweet ID less than (that is, older than) the specified ID.
  next_token: 'next_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  granularity: 'minute', # String | The granularity for the search counts results.
  search_count_fields: ['end'] # Array<String> | A comma separated list of SearchCount fields to display.
}

begin
  # Recent search counts
  result = api_instance.tweet_counts_recent_search(query, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweet_counts_recent_search: #{e}"
end
```

#### Using the tweet_counts_recent_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsCountsRecentResponse>, Integer, Hash)> tweet_counts_recent_search_with_http_info(query, opts)

```ruby
begin
  # Recent search counts
  data, status_code, headers = api_instance.tweet_counts_recent_search_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsCountsRecentResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweet_counts_recent_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. |  |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp (from most recent 7 days) from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] |
| **since_id** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] |
| **until_id** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] |
| **next_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **granularity** | **String** | The granularity for the search counts results. | [optional][default to &#39;hour&#39;] |
| **search_count_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of SearchCount fields to display. | [optional] |

### Return type

[**Get2TweetsCountsRecentResponse**](Get2TweetsCountsRecentResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## tweets_fullarchive_search

> <Get2TweetsSearchAllResponse> tweets_fullarchive_search(query, opts)

Full-archive search

Returns Tweets that match a search query.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::TweetsApi.new
query = '(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet' # String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
opts = {
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  since_id: 'since_id_example', # String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  until_id: 'until_id_example', # String | Returns results with a Tweet ID less than (that is, older than) the specified ID.
  max_results: 56, # Integer | The maximum number of search results to be returned by a request.
  next_token: 'next_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  sort_order: 'recency', # String | This order in which to return results.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Full-archive search
  result = api_instance.tweets_fullarchive_search(query, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweets_fullarchive_search: #{e}"
end
```

#### Using the tweets_fullarchive_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsSearchAllResponse>, Integer, Hash)> tweets_fullarchive_search_with_http_info(query, opts)

```ruby
begin
  # Full-archive search
  data, status_code, headers = api_instance.tweets_fullarchive_search_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsSearchAllResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweets_fullarchive_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. |  |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] |
| **since_id** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] |
| **until_id** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] |
| **max_results** | **Integer** | The maximum number of search results to be returned by a request. | [optional][default to 10] |
| **next_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **sort_order** | **String** | This order in which to return results. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2TweetsSearchAllResponse**](Get2TweetsSearchAllResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## tweets_recent_search

> <Get2TweetsSearchRecentResponse> tweets_recent_search(query, opts)

Recent search

Returns Tweets from the last 7 days that match a search query.

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

api_instance = Xbird::TweetsApi.new
query = '(from:TwitterDev OR from:TwitterAPI) has:media -is:retweet' # String | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length.
opts = {
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute).
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute).
  since_id: 'since_id_example', # String | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID.
  until_id: 'until_id_example', # String | Returns results with a Tweet ID less than (that is, older than) the specified ID.
  max_results: 56, # Integer | The maximum number of search results to be returned by a request.
  next_token: 'next_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified.
  sort_order: 'recency', # String | This order in which to return results.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # Recent search
  result = api_instance.tweets_recent_search(query, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweets_recent_search: #{e}"
end
```

#### Using the tweets_recent_search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2TweetsSearchRecentResponse>, Integer, Hash)> tweets_recent_search_with_http_info(query, opts)

```ruby
begin
  # Recent search
  data, status_code, headers = api_instance.tweets_recent_search_with_http_info(query, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2TweetsSearchRecentResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->tweets_recent_search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | One query/rule/filter for matching Tweets. Refer to https://t.co/rulelength to identify the max query length. |  |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The oldest UTC timestamp from which the Tweets will be provided. Timestamp is in second granularity and is inclusive (i.e. 12:00:01 includes the first second of the minute). | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The newest, most recent UTC timestamp to which the Tweets will be provided. Timestamp is in second granularity and is exclusive (i.e. 12:00:01 excludes the first second of the minute). | [optional] |
| **since_id** | **String** | Returns results with a Tweet ID greater than (that is, more recent than) the specified ID. | [optional] |
| **until_id** | **String** | Returns results with a Tweet ID less than (that is, older than) the specified ID. | [optional] |
| **max_results** | **Integer** | The maximum number of search results to be returned by a request. | [optional][default to 10] |
| **next_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. The value used with the parameter is pulled directly from the response provided by the API, and should not be modified. | [optional] |
| **sort_order** | **String** | This order in which to return results. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2TweetsSearchRecentResponse**](Get2TweetsSearchRecentResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_like

> <UsersLikesCreateResponse> users_id_like(id, opts)

Causes the User (in the path) to like the specified Tweet

Causes the User (in the path) to like the specified Tweet. The User in the path must match the User context authorizing the request.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | The ID of the authenticated source User that is requesting to like the Tweet.
opts = {
  users_likes_create_request: Xbird::UsersLikesCreateRequest.new({tweet_id: '1346889436626259968'}) # UsersLikesCreateRequest | 
}

begin
  # Causes the User (in the path) to like the specified Tweet
  result = api_instance.users_id_like(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_like: #{e}"
end
```

#### Using the users_id_like_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersLikesCreateResponse>, Integer, Hash)> users_id_like_with_http_info(id, opts)

```ruby
begin
  # Causes the User (in the path) to like the specified Tweet
  data, status_code, headers = api_instance.users_id_like_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersLikesCreateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_like_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that is requesting to like the Tweet. |  |
| **users_likes_create_request** | [**UsersLikesCreateRequest**](UsersLikesCreateRequest.md) |  | [optional] |

### Return type

[**UsersLikesCreateResponse**](UsersLikesCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## users_id_liked_tweets

> <Get2UsersIdLikedTweetsResponse> users_id_liked_tweets(id, opts)

Returns Tweet objects liked by the provided User ID

Returns a list of Tweets liked by the provided User ID

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

api_instance = Xbird::TweetsApi.new
id = '2244994945' # String | The ID of the User to lookup.
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
  # Returns Tweet objects liked by the provided User ID
  result = api_instance.users_id_liked_tweets(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_liked_tweets: #{e}"
end
```

#### Using the users_id_liked_tweets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdLikedTweetsResponse>, Integer, Hash)> users_id_liked_tweets_with_http_info(id, opts)

```ruby
begin
  # Returns Tweet objects liked by the provided User ID
  data, status_code, headers = api_instance.users_id_liked_tweets_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdLikedTweetsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_liked_tweets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2UsersIdLikedTweetsResponse**](Get2UsersIdLikedTweetsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_mentions

> <Get2UsersIdMentionsResponse> users_id_mentions(id, opts)

User mention timeline by User ID

Returns Tweet objects that mention username associated to the provided User ID

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

api_instance = Xbird::TweetsApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  since_id: 'since_id_example', # String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified.
  until_id: '1346889436626259968', # String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified.
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  start_time: Time.parse('2021-02-01T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified.
  end_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # User mention timeline by User ID
  result = api_instance.users_id_mentions(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_mentions: #{e}"
end
```

#### Using the users_id_mentions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdMentionsResponse>, Integer, Hash)> users_id_mentions_with_http_info(id, opts)

```ruby
begin
  # User mention timeline by User ID
  data, status_code, headers = api_instance.users_id_mentions_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdMentionsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_mentions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **since_id** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] |
| **until_id** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2UsersIdMentionsResponse**](Get2UsersIdMentionsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_retweets

> <UsersRetweetsCreateResponse> users_id_retweets(id, opts)

Causes the User (in the path) to retweet the specified Tweet.

Causes the User (in the path) to retweet the specified Tweet. The User in the path must match the User context authorizing the request.

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | The ID of the authenticated source User that is requesting to retweet the Tweet.
opts = {
  users_retweets_create_request: Xbird::UsersRetweetsCreateRequest.new({tweet_id: '1346889436626259968'}) # UsersRetweetsCreateRequest | 
}

begin
  # Causes the User (in the path) to retweet the specified Tweet.
  result = api_instance.users_id_retweets(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_retweets: #{e}"
end
```

#### Using the users_id_retweets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersRetweetsCreateResponse>, Integer, Hash)> users_id_retweets_with_http_info(id, opts)

```ruby
begin
  # Causes the User (in the path) to retweet the specified Tweet.
  data, status_code, headers = api_instance.users_id_retweets_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersRetweetsCreateResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_retweets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that is requesting to retweet the Tweet. |  |
| **users_retweets_create_request** | [**UsersRetweetsCreateRequest**](UsersRetweetsCreateRequest.md) |  | [optional] |

### Return type

[**UsersRetweetsCreateResponse**](UsersRetweetsCreateResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## users_id_timeline

> <Get2UsersIdTimelinesReverseChronologicalResponse> users_id_timeline(id, opts)

User home timeline by User ID

Returns Tweet objects that appears in the provided User ID's home timeline

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | The ID of the authenticated source User to list Reverse Chronological Timeline Tweets of.
opts = {
  since_id: '791775337160081409', # String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified.
  until_id: '1346889436626259968', # String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified.
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  exclude: ['replies'], # Array<String> | The set of entities to exclude (e.g. 'replies' or 'retweets').
  start_time: Time.parse('2021-02-01T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified.
  end_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # User home timeline by User ID
  result = api_instance.users_id_timeline(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_timeline: #{e}"
end
```

#### Using the users_id_timeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdTimelinesReverseChronologicalResponse>, Integer, Hash)> users_id_timeline_with_http_info(id, opts)

```ruby
begin
  # User home timeline by User ID
  data, status_code, headers = api_instance.users_id_timeline_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdTimelinesReverseChronologicalResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_timeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User to list Reverse Chronological Timeline Tweets of. |  |
| **since_id** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] |
| **until_id** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **exclude** | [**Array&lt;String&gt;**](String.md) | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2UsersIdTimelinesReverseChronologicalResponse**](Get2UsersIdTimelinesReverseChronologicalResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_tweets

> <Get2UsersIdTweetsResponse> users_id_tweets(id, opts)

User Tweets timeline by User ID

Returns a list of Tweets authored by the provided User ID

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

api_instance = Xbird::TweetsApi.new
id = '2244994945' # String | The ID of the User to lookup.
opts = {
  since_id: '791775337160081409', # String | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified.
  until_id: '1346889436626259968', # String | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified.
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  exclude: ['replies'], # Array<String> | The set of entities to exclude (e.g. 'replies' or 'retweets').
  start_time: Time.parse('2021-02-01T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified.
  end_time: Time.parse('2021-02-14T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  # User Tweets timeline by User ID
  result = api_instance.users_id_tweets(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_tweets: #{e}"
end
```

#### Using the users_id_tweets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2UsersIdTweetsResponse>, Integer, Hash)> users_id_tweets_with_http_info(id, opts)

```ruby
begin
  # User Tweets timeline by User ID
  data, status_code, headers = api_instance.users_id_tweets_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2UsersIdTweetsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_tweets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the User to lookup. |  |
| **since_id** | **String** | The minimum Tweet ID to be included in the result set. This parameter takes precedence over start_time if both are specified. | [optional] |
| **until_id** | **String** | The maximum Tweet ID to be included in the result set. This parameter takes precedence over end_time if both are specified. | [optional] |
| **max_results** | **Integer** | The maximum number of results. | [optional] |
| **pagination_token** | **String** | This parameter is used to get the next &#39;page&#39; of results. | [optional] |
| **exclude** | [**Array&lt;String&gt;**](String.md) | The set of entities to exclude (e.g. &#39;replies&#39; or &#39;retweets&#39;). | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweets will be provided. The since_id parameter takes precedence if it is also specified. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweets will be provided. The until_id parameter takes precedence if it is also specified. | [optional] |
| **tweet_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Tweet fields to display. | [optional] |
| **expansions** | [**Array&lt;String&gt;**](String.md) | A comma separated list of fields to expand. | [optional] |
| **media_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Media fields to display. | [optional] |
| **poll_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Poll fields to display. | [optional] |
| **user_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of User fields to display. | [optional] |
| **place_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of Place fields to display. | [optional] |

### Return type

[**Get2UsersIdTweetsResponse**](Get2UsersIdTweetsResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [BearerToken](../README.md#BearerToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_unlike

> <UsersLikesDeleteResponse> users_id_unlike(id, tweet_id)

Causes the User (in the path) to unlike the specified Tweet

Causes the User (in the path) to unlike the specified Tweet. The User must match the User context authorizing the request

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | The ID of the authenticated source User that is requesting to unlike the Tweet.
tweet_id = 'tweet_id_example' # String | The ID of the Tweet that the User is requesting to unlike.

begin
  # Causes the User (in the path) to unlike the specified Tweet
  result = api_instance.users_id_unlike(id, tweet_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_unlike: #{e}"
end
```

#### Using the users_id_unlike_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersLikesDeleteResponse>, Integer, Hash)> users_id_unlike_with_http_info(id, tweet_id)

```ruby
begin
  # Causes the User (in the path) to unlike the specified Tweet
  data, status_code, headers = api_instance.users_id_unlike_with_http_info(id, tweet_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersLikesDeleteResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_unlike_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that is requesting to unlike the Tweet. |  |
| **tweet_id** | **String** | The ID of the Tweet that the User is requesting to unlike. |  |

### Return type

[**UsersLikesDeleteResponse**](UsersLikesDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## users_id_unretweets

> <UsersRetweetsDeleteResponse> users_id_unretweets(id, source_tweet_id)

Causes the User (in the path) to unretweet the specified Tweet

Causes the User (in the path) to unretweet the specified Tweet. The User must match the User context authorizing the request

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'

end

api_instance = Xbird::TweetsApi.new
id = 'id_example' # String | The ID of the authenticated source User that is requesting to retweet the Tweet.
source_tweet_id = 'source_tweet_id_example' # String | The ID of the Tweet that the User is requesting to unretweet.

begin
  # Causes the User (in the path) to unretweet the specified Tweet
  result = api_instance.users_id_unretweets(id, source_tweet_id)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_unretweets: #{e}"
end
```

#### Using the users_id_unretweets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UsersRetweetsDeleteResponse>, Integer, Hash)> users_id_unretweets_with_http_info(id, source_tweet_id)

```ruby
begin
  # Causes the User (in the path) to unretweet the specified Tweet
  data, status_code, headers = api_instance.users_id_unretweets_with_http_info(id, source_tweet_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UsersRetweetsDeleteResponse>
rescue Xbird::ApiError => e
  puts "Error when calling TweetsApi->users_id_unretweets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the authenticated source User that is requesting to retweet the Tweet. |  |
| **source_tweet_id** | **String** | The ID of the Tweet that the User is requesting to unretweet. |  |

### Return type

[**UsersRetweetsDeleteResponse**](UsersRetweetsDeleteResponse.md)

### Authorization

[OAuth2UserToken](../README.md#OAuth2UserToken), [UserToken](../README.md#UserToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

