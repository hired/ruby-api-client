=begin
#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require "uri"

module QwilAPI
  class RebatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<RebateSerializer>]
    def rebate_list(opts = {})
      data, _status_code, _headers = rebate_list_with_http_info(opts)
      return data
    end

    # 
    # 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RebateSerializer>, Fixnum, Hash)>] Array<RebateSerializer> data, response status code and response headers
    def rebate_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RebatesApi.rebate_list ..."
      end
      # resource path
      local_var_path = "/rebates/".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<RebateSerializer>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RebatesApi#rebate_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 
    # 
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [RebateSerializer]
    def rebate_retrieve(pk, opts = {})
      data, _status_code, _headers = rebate_retrieve_with_http_info(pk, opts)
      return data
    end

    # 
    # 
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RebateSerializer, Fixnum, Hash)>] RebateSerializer data, response status code and response headers
    def rebate_retrieve_with_http_info(pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RebatesApi.rebate_retrieve ..."
      end
      # verify the required parameter 'pk' is set
      fail ArgumentError, "Missing the required parameter 'pk' when calling RebatesApi.rebate_retrieve" if pk.nil?
      # resource path
      local_var_path = "/rebates/{pk}/".sub('{format}','json').sub('{' + 'pk' + '}', pk.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = []
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RebateSerializer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RebatesApi#rebate_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end