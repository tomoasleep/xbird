# Xbird::ComplianceApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_compliance_job**](ComplianceApi.md#create_batch_compliance_job) | **POST** /2/compliance/jobs | Create compliance job |
| [**get_batch_compliance_job**](ComplianceApi.md#get_batch_compliance_job) | **GET** /2/compliance/jobs/{id} | Get Compliance Job |
| [**get_tweets_compliance_stream**](ComplianceApi.md#get_tweets_compliance_stream) | **GET** /2/tweets/compliance/stream | Tweets Compliance stream |
| [**get_tweets_label_stream**](ComplianceApi.md#get_tweets_label_stream) | **GET** /2/tweets/label/stream | Tweets Label stream |
| [**get_users_compliance_stream**](ComplianceApi.md#get_users_compliance_stream) | **GET** /2/users/compliance/stream | Users Compliance stream |
| [**list_batch_compliance_jobs**](ComplianceApi.md#list_batch_compliance_jobs) | **GET** /2/compliance/jobs | List Compliance Jobs |


## create_batch_compliance_job

> <CreateComplianceJobResponse> create_batch_compliance_job(create_compliance_job_request)

Create compliance job

Creates a compliance for the given job type

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::ComplianceApi.new
create_compliance_job_request = Xbird::CreateComplianceJobRequest.new({type: 'tweets'}) # CreateComplianceJobRequest | 

begin
  # Create compliance job
  result = api_instance.create_batch_compliance_job(create_compliance_job_request)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->create_batch_compliance_job: #{e}"
end
```

#### Using the create_batch_compliance_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateComplianceJobResponse>, Integer, Hash)> create_batch_compliance_job_with_http_info(create_compliance_job_request)

```ruby
begin
  # Create compliance job
  data, status_code, headers = api_instance.create_batch_compliance_job_with_http_info(create_compliance_job_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateComplianceJobResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->create_batch_compliance_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_compliance_job_request** | [**CreateComplianceJobRequest**](CreateComplianceJobRequest.md) |  |  |

### Return type

[**CreateComplianceJobResponse**](CreateComplianceJobResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_batch_compliance_job

> <Get2ComplianceJobsIdResponse> get_batch_compliance_job(id, opts)

Get Compliance Job

Returns a single Compliance Job by ID

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::ComplianceApi.new
id = 'id_example' # String | The ID of the Compliance Job to retrieve.
opts = {
  compliance_job_fields: ['created_at'] # Array<String> | A comma separated list of ComplianceJob fields to display.
}

begin
  # Get Compliance Job
  result = api_instance.get_batch_compliance_job(id, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_batch_compliance_job: #{e}"
end
```

#### Using the get_batch_compliance_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2ComplianceJobsIdResponse>, Integer, Hash)> get_batch_compliance_job_with_http_info(id, opts)

```ruby
begin
  # Get Compliance Job
  data, status_code, headers = api_instance.get_batch_compliance_job_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2ComplianceJobsIdResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_batch_compliance_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the Compliance Job to retrieve. |  |
| **compliance_job_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of ComplianceJob fields to display. | [optional] |

### Return type

[**Get2ComplianceJobsIdResponse**](Get2ComplianceJobsIdResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_tweets_compliance_stream

> <TweetComplianceStreamResponse> get_tweets_compliance_stream(partition, opts)

Tweets Compliance stream

Streams 100% of compliance data for Tweets

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::ComplianceApi.new
partition = 56 # Integer | The partition number.
opts = {
  backfill_minutes: 56, # Integer | The number of minutes of backfill requested.
  start_time: Time.parse('2021-02-01T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweet Compliance events will be provided.
  end_time: Time.parse('2021-02-14T18:40:40.000Z') # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweet Compliance events will be provided.
}

begin
  # Tweets Compliance stream
  result = api_instance.get_tweets_compliance_stream(partition, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_tweets_compliance_stream: #{e}"
end
```

#### Using the get_tweets_compliance_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TweetComplianceStreamResponse>, Integer, Hash)> get_tweets_compliance_stream_with_http_info(partition, opts)

```ruby
begin
  # Tweets Compliance stream
  data, status_code, headers = api_instance.get_tweets_compliance_stream_with_http_info(partition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TweetComplianceStreamResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_tweets_compliance_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partition** | **Integer** | The partition number. |  |
| **backfill_minutes** | **Integer** | The number of minutes of backfill requested. | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweet Compliance events will be provided. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp to which the Tweet Compliance events will be provided. | [optional] |

### Return type

[**TweetComplianceStreamResponse**](TweetComplianceStreamResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_tweets_label_stream

> <TweetLabelStreamResponse> get_tweets_label_stream(opts)

Tweets Label stream

Streams 100% of labeling events applied to Tweets

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::ComplianceApi.new
opts = {
  backfill_minutes: 56, # Integer | The number of minutes of backfill requested.
  start_time: Time.parse('2021-02-01T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweet labels will be provided.
  end_time: Time.parse('2021-02-01T18:40:40.000Z') # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp from which the Tweet labels will be provided.
}

begin
  # Tweets Label stream
  result = api_instance.get_tweets_label_stream(opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_tweets_label_stream: #{e}"
end
```

#### Using the get_tweets_label_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TweetLabelStreamResponse>, Integer, Hash)> get_tweets_label_stream_with_http_info(opts)

```ruby
begin
  # Tweets Label stream
  data, status_code, headers = api_instance.get_tweets_label_stream_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TweetLabelStreamResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_tweets_label_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **backfill_minutes** | **Integer** | The number of minutes of backfill requested. | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the Tweet labels will be provided. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp from which the Tweet labels will be provided. | [optional] |

### Return type

[**TweetLabelStreamResponse**](TweetLabelStreamResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_users_compliance_stream

> <UserComplianceStreamResponse> get_users_compliance_stream(partition, opts)

Users Compliance stream

Streams 100% of compliance data for Users

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::ComplianceApi.new
partition = 56 # Integer | The partition number.
opts = {
  backfill_minutes: 56, # Integer | The number of minutes of backfill requested.
  start_time: Time.parse('2021-02-01T18:40:40.000Z'), # Time | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the User Compliance events will be provided.
  end_time: Time.parse('2021-02-01T18:40:40.000Z') # Time | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp from which the User Compliance events will be provided.
}

begin
  # Users Compliance stream
  result = api_instance.get_users_compliance_stream(partition, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_users_compliance_stream: #{e}"
end
```

#### Using the get_users_compliance_stream_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserComplianceStreamResponse>, Integer, Hash)> get_users_compliance_stream_with_http_info(partition, opts)

```ruby
begin
  # Users Compliance stream
  data, status_code, headers = api_instance.get_users_compliance_stream_with_http_info(partition, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserComplianceStreamResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->get_users_compliance_stream_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **partition** | **Integer** | The partition number. |  |
| **backfill_minutes** | **Integer** | The number of minutes of backfill requested. | [optional] |
| **start_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The earliest UTC timestamp from which the User Compliance events will be provided. | [optional] |
| **end_time** | **Time** | YYYY-MM-DDTHH:mm:ssZ. The latest UTC timestamp from which the User Compliance events will be provided. | [optional] |

### Return type

[**UserComplianceStreamResponse**](UserComplianceStreamResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_batch_compliance_jobs

> <Get2ComplianceJobsResponse> list_batch_compliance_jobs(type, opts)

List Compliance Jobs

Returns recent Compliance Jobs for a given job type and optional job status

### Examples

```ruby
require 'time'
require 'xbird'
# setup authorization
Xbird.configure do |config|
  # Configure Bearer authorization: BearerToken
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Xbird::ComplianceApi.new
type = 'tweets' # String | Type of Compliance Job to list.
opts = {
  status: 'created', # String | Status of Compliance Job to list.
  compliance_job_fields: ['created_at'] # Array<String> | A comma separated list of ComplianceJob fields to display.
}

begin
  # List Compliance Jobs
  result = api_instance.list_batch_compliance_jobs(type, opts)
  p result
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->list_batch_compliance_jobs: #{e}"
end
```

#### Using the list_batch_compliance_jobs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Get2ComplianceJobsResponse>, Integer, Hash)> list_batch_compliance_jobs_with_http_info(type, opts)

```ruby
begin
  # List Compliance Jobs
  data, status_code, headers = api_instance.list_batch_compliance_jobs_with_http_info(type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Get2ComplianceJobsResponse>
rescue Xbird::ApiError => e
  puts "Error when calling ComplianceApi->list_batch_compliance_jobs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Type of Compliance Job to list. |  |
| **status** | **String** | Status of Compliance Job to list. | [optional] |
| **compliance_job_fields** | [**Array&lt;String&gt;**](String.md) | A comma separated list of ComplianceJob fields to display. | [optional] |

### Return type

[**Get2ComplianceJobsResponse**](Get2ComplianceJobsResponse.md)

### Authorization

[BearerToken](../README.md#BearerToken)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

