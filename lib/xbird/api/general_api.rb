# frozen_string_literal: true

# #Twitter API v2
#
# Twitter API v2 available endpoints
#
# The version of the OpenAPI document: 2.62
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 6.5.0
#

require "cgi"

module Xbird
  class GeneralApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns the OpenAPI Specification document.
    # Full OpenAPI Specification in JSON format. (See https://github.com/OAI/OpenAPI-Specification/blob/master/README.md)
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def get_open_api_spec(opts = {})
      data, _status_code, _headers = get_open_api_spec_with_http_info(opts)
      data
    end

    # Returns the OpenAPI Specification document.
    # Full OpenAPI Specification in JSON format. (See https://github.com/OAI/OpenAPI-Specification/blob/master/README.md)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def get_open_api_spec_with_http_info(opts = {})
      @api_client.config.logger.debug "Calling API: GeneralApi.get_open_api_spec ..." if @api_client.config.debugging
      # resource path
      local_var_path = "/2/openapi.json"

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "Object"

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        operation: :"GeneralApi.get_open_api_spec",
        header_params: header_params,
        query_params: query_params,
        form_params: form_params,
        body: post_body,
        auth_names: auth_names,
        return_type: return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      @api_client.config.logger.debug "API called: GeneralApi#get_open_api_spec\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" if @api_client.config.debugging
      [data, status_code, headers]
    end
  end
end
