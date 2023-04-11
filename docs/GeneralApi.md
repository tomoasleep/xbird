# Xbird::GeneralApi

All URIs are relative to *https://api.twitter.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_open_api_spec**](GeneralApi.md#get_open_api_spec) | **GET** /2/openapi.json | Returns the OpenAPI Specification document. |


## get_open_api_spec

> Object get_open_api_spec

Returns the OpenAPI Specification document.

Full OpenAPI Specification in JSON format. (See https://github.com/OAI/OpenAPI-Specification/blob/master/README.md)

### Examples

```ruby
require 'time'
require 'xbird'

api_instance = Xbird::GeneralApi.new

begin
  # Returns the OpenAPI Specification document.
  result = api_instance.get_open_api_spec
  p result
rescue Xbird::ApiError => e
  puts "Error when calling GeneralApi->get_open_api_spec: #{e}"
end
```

#### Using the get_open_api_spec_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_open_api_spec_with_http_info

```ruby
begin
  # Returns the OpenAPI Specification document.
  data, status_code, headers = api_instance.get_open_api_spec_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Xbird::ApiError => e
  puts "Error when calling GeneralApi->get_open_api_spec_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

