=begin
#Beanie ERP API

#An API specification for interacting with the Beanie ERP system

OpenAPI spec version: 0.8
Contact: dev@bean.ie
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module Beanie
  class BankAccountApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new bank account in the system
    # @param bank_account Bank account to add to the system
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def add_bank_account(bank_account, opts = {})
      data, _status_code, _headers = add_bank_account_with_http_info(bank_account, opts)
      data
    end

    # Creates a new bank account in the system
    # @param bank_account Bank account to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Fixnum, Hash)>] BankAccount data, response status code and response headers
    def add_bank_account_with_http_info(bank_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountApi.add_bank_account ...'
      end
      # verify the required parameter 'bank_account' is set
      if @api_client.config.client_side_validation && bank_account.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account' when calling BankAccountApi.add_bank_account"
      end
      # resource path
      local_var_path = '/bank_accounts'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(bank_account)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountApi#add_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find Bank Account by ID
    # Returns a single bank account if the user has access
    # @param id ID of bank account to fetch
    # @param [Hash] opts the optional parameters
    # @return [BankAccount]
    def find_bank_account_by_id(id, opts = {})
      data, _status_code, _headers = find_bank_account_by_id_with_http_info(id, opts)
      data
    end

    # Find Bank Account by ID
    # Returns a single bank account if the user has access
    # @param id ID of bank account to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccount, Fixnum, Hash)>] BankAccount data, response status code and response headers
    def find_bank_account_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountApi.find_bank_account_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BankAccountApi.find_bank_account_by_id"
      end
      # resource path
      local_var_path = '/bank_accounts/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankAccount')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountApi#find_bank_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All bank accounts
    # Returns all bank accounts from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit maximum number of results to return
    # @return [Array<BankAccount>]
    def find_bank_accounts(opts = {})
      data, _status_code, _headers = find_bank_accounts_with_http_info(opts)
      data
    end

    # All bank accounts
    # Returns all bank accounts from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit maximum number of results to return
    # @return [Array<(Array<BankAccount>, Fixnum, Hash)>] Array<BankAccount> data, response status code and response headers
    def find_bank_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountApi.find_bank_accounts ...'
      end
      # resource path
      local_var_path = '/bank_accounts'

      # query parameters
      query_params = {}
      query_params[:'tags'] = @api_client.build_collection_param(opts[:'tags'], :csv) if !opts[:'tags'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<BankAccount>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountApi#find_bank_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
