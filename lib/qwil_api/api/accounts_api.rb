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
  class AccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.<br/>Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.<br/>Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.<br/>The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.<br/>NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.<br/>e.g.<br/>=> PATCH https://api.qwil.co/accounts/1/ {...}<br/><= 200 OK {   \"url\": \"https://api.qwil.co/accounts/2/\",   ... }<br/>The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [AccountSerializer]
    def account_destroy(pk, opts = {})
      data, _status_code, _headers = account_destroy_with_http_info(pk, opts)
      return data
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.&lt;br/&gt;Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g.&lt;br/&gt;&#x3D;&gt; PATCH https://api.qwil.co/accounts/1/ {...}&lt;br/&gt;&lt;&#x3D; 200 OK {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountSerializer, Fixnum, Hash)>] AccountSerializer data, response status code and response headers
    def account_destroy_with_http_info(pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.account_destroy ..."
      end
      # verify the required parameter 'pk' is set
      fail ArgumentError, "Missing the required parameter 'pk' when calling AccountsApi.account_destroy" if pk.nil?
      # resource path
      local_var_path = "/accounts/{pk}/".sub('{format}','json').sub('{' + 'pk' + '}', pk.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountSerializer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#account_destroy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.<br/>Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.<br/>Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.<br/>The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.<br/>NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.<br/>e.g.<br/>=> PATCH https://api.qwil.co/accounts/1/ {...}<br/><= 200 OK {   \"url\": \"https://api.qwil.co/accounts/2/\",   ... }<br/>The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_number 
    # @option opts [String] :name The user&#39;s label for this Account.
    # @option opts [String] :routing_number The inter-bank routing nubmer for this Account. 8 or 9 digits in length.
    # @option opts [BOOLEAN] :is_tax_savings Flag specifying if the Account is used for tax savings.
    # @option opts [BOOLEAN] :is_paypal Flag specifying if the Account is a Paypal account.
    # @option opts [BOOLEAN] :is_mychoice Flag specifying if the Account is a MyChoice card. If it is, the mychoice_user_id and mychoice_card_id must be filled in.
    # @option opts [Integer] :mychoice_user_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [Integer] :mychoice_card_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [String] :user 
    # @return [AccountSerializer]
    def account_partial_update(pk, opts = {})
      data, _status_code, _headers = account_partial_update_with_http_info(pk, opts)
      return data
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.&lt;br/&gt;Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g.&lt;br/&gt;&#x3D;&gt; PATCH https://api.qwil.co/accounts/1/ {...}&lt;br/&gt;&lt;&#x3D; 200 OK {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_number 
    # @option opts [String] :name The user&#39;s label for this Account.
    # @option opts [String] :routing_number The inter-bank routing nubmer for this Account. 8 or 9 digits in length.
    # @option opts [BOOLEAN] :is_tax_savings Flag specifying if the Account is used for tax savings.
    # @option opts [BOOLEAN] :is_paypal Flag specifying if the Account is a Paypal account.
    # @option opts [BOOLEAN] :is_mychoice Flag specifying if the Account is a MyChoice card. If it is, the mychoice_user_id and mychoice_card_id must be filled in.
    # @option opts [Integer] :mychoice_user_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [Integer] :mychoice_card_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [String] :user 
    # @return [Array<(AccountSerializer, Fixnum, Hash)>] AccountSerializer data, response status code and response headers
    def account_partial_update_with_http_info(pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.account_partial_update ..."
      end
      # verify the required parameter 'pk' is set
      fail ArgumentError, "Missing the required parameter 'pk' when calling AccountsApi.account_partial_update" if pk.nil?
      # resource path
      local_var_path = "/accounts/{pk}/".sub('{format}','json').sub('{' + 'pk' + '}', pk.to_s)

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
      form_params["account_number"] = opts[:'account_number'] if !opts[:'account_number'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["routing_number"] = opts[:'routing_number'] if !opts[:'routing_number'].nil?
      form_params["is_tax_savings"] = opts[:'is_tax_savings'] if !opts[:'is_tax_savings'].nil?
      form_params["is_paypal"] = opts[:'is_paypal'] if !opts[:'is_paypal'].nil?
      form_params["is_mychoice"] = opts[:'is_mychoice'] if !opts[:'is_mychoice'].nil?
      form_params["mychoice_user_id"] = opts[:'mychoice_user_id'] if !opts[:'mychoice_user_id'].nil?
      form_params["mychoice_card_id"] = opts[:'mychoice_card_id'] if !opts[:'mychoice_card_id'].nil?
      form_params["user"] = opts[:'user'] if !opts[:'user'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountSerializer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#account_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.<br/>Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.<br/>Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.<br/>The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.<br/>NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.<br/>e.g.<br/>=> PATCH https://api.qwil.co/accounts/1/ {...}<br/><= 200 OK {   \"url\": \"https://api.qwil.co/accounts/2/\",   ... }<br/>The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [AccountSerializer]
    def account_retrieve(pk, opts = {})
      data, _status_code, _headers = account_retrieve_with_http_info(pk, opts)
      return data
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.&lt;br/&gt;Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g.&lt;br/&gt;&#x3D;&gt; PATCH https://api.qwil.co/accounts/1/ {...}&lt;br/&gt;&lt;&#x3D; 200 OK {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountSerializer, Fixnum, Hash)>] AccountSerializer data, response status code and response headers
    def account_retrieve_with_http_info(pk, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.account_retrieve ..."
      end
      # verify the required parameter 'pk' is set
      fail ArgumentError, "Missing the required parameter 'pk' when calling AccountsApi.account_retrieve" if pk.nil?
      # resource path
      local_var_path = "/accounts/{pk}/".sub('{format}','json').sub('{' + 'pk' + '}', pk.to_s)

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
        :return_type => 'AccountSerializer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#account_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.<br/>Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.<br/>Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.<br/>The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.<br/>NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.<br/>e.g.<br/>=> PATCH https://api.qwil.co/accounts/1/ {...}<br/><= 200 OK {   \"url\": \"https://api.qwil.co/accounts/2/\",   ... }<br/>The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param account_number 
    # @param name The user&#39;s label for this Account.
    # @param routing_number The inter-bank routing nubmer for this Account. 8 or 9 digits in length.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_tax_savings Flag specifying if the Account is used for tax savings.
    # @option opts [BOOLEAN] :is_paypal Flag specifying if the Account is a Paypal account.
    # @option opts [BOOLEAN] :is_mychoice Flag specifying if the Account is a MyChoice card. If it is, the mychoice_user_id and mychoice_card_id must be filled in.
    # @option opts [Integer] :mychoice_user_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [Integer] :mychoice_card_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [String] :user 
    # @return [AccountSerializer]
    def account_update(pk, account_number, name, routing_number, opts = {})
      data, _status_code, _headers = account_update_with_http_info(pk, account_number, name, routing_number, opts)
      return data
    end

    # The bank accounts for all Users
    # The bank accounts for all Users. Enables retrieve, update (PUT/PATCH), and destroy.&lt;br/&gt;Note that the Account API objects are immutable, but the DELETE API method is still offered to allow users to remove Accounts.&lt;br/&gt;Note that the Account DB models are immutable, but the PUT/PATCH/DELETE API methods are still offered to allow users to modify/remove Accounts.&lt;br/&gt;The PUT/PATCH HTTP methods will create a new Account with the same data as the old one, and then apply the update to that new account. The old Account will be marked as deleted.&lt;br/&gt;NOTE: if you update an Account, it will get a new primary key, and therefore a new URL. You will need to extract the new URL from the body of the HTTP response to the update request.&lt;br/&gt;e.g.&lt;br/&gt;&#x3D;&gt; PATCH https://api.qwil.co/accounts/1/ {...}&lt;br/&gt;&lt;&#x3D; 200 OK {   \&quot;url\&quot;: \&quot;https://api.qwil.co/accounts/2/\&quot;,   ... }&lt;br/&gt;The DELETE HTTP method will cause Accounts to have the Account.deleted flag set to True, but deleted Accounts will still be displayed in the /accounts/ list.
    # @param pk 
    # @param account_number 
    # @param name The user&#39;s label for this Account.
    # @param routing_number The inter-bank routing nubmer for this Account. 8 or 9 digits in length.
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :is_tax_savings Flag specifying if the Account is used for tax savings.
    # @option opts [BOOLEAN] :is_paypal Flag specifying if the Account is a Paypal account.
    # @option opts [BOOLEAN] :is_mychoice Flag specifying if the Account is a MyChoice card. If it is, the mychoice_user_id and mychoice_card_id must be filled in.
    # @option opts [Integer] :mychoice_user_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [Integer] :mychoice_card_id For MyChoice Accounts. Populated from the MyChoice API.
    # @option opts [String] :user 
    # @return [Array<(AccountSerializer, Fixnum, Hash)>] AccountSerializer data, response status code and response headers
    def account_update_with_http_info(pk, account_number, name, routing_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AccountsApi.account_update ..."
      end
      # verify the required parameter 'pk' is set
      fail ArgumentError, "Missing the required parameter 'pk' when calling AccountsApi.account_update" if pk.nil?
      # verify the required parameter 'account_number' is set
      fail ArgumentError, "Missing the required parameter 'account_number' when calling AccountsApi.account_update" if account_number.nil?
      # verify the required parameter 'name' is set
      fail ArgumentError, "Missing the required parameter 'name' when calling AccountsApi.account_update" if name.nil?
      # verify the required parameter 'routing_number' is set
      fail ArgumentError, "Missing the required parameter 'routing_number' when calling AccountsApi.account_update" if routing_number.nil?
      # resource path
      local_var_path = "/accounts/{pk}/".sub('{format}','json').sub('{' + 'pk' + '}', pk.to_s)

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
      form_params["account_number"] = account_number
      form_params["name"] = name
      form_params["routing_number"] = routing_number
      form_params["is_tax_savings"] = opts[:'is_tax_savings'] if !opts[:'is_tax_savings'].nil?
      form_params["is_paypal"] = opts[:'is_paypal'] if !opts[:'is_paypal'].nil?
      form_params["is_mychoice"] = opts[:'is_mychoice'] if !opts[:'is_mychoice'].nil?
      form_params["mychoice_user_id"] = opts[:'mychoice_user_id'] if !opts[:'mychoice_user_id'].nil?
      form_params["mychoice_card_id"] = opts[:'mychoice_card_id'] if !opts[:'mychoice_card_id'].nil?
      form_params["user"] = opts[:'user'] if !opts[:'user'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountSerializer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountsApi#account_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end