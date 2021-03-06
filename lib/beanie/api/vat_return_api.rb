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
  class VatReturnApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new vat return in the system
    # @param vat_returns VAT return to add to the system
    # @param [Hash] opts the optional parameters
    # @return [VatReturn]
    def add_vat_return(vat_returns, opts = {})
      data, _status_code, _headers = add_vat_return_with_http_info(vat_returns, opts)
      data
    end

    # Creates a new vat return in the system
    # @param vat_returns VAT return to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Array<(VatReturn, Fixnum, Hash)>] VatReturn data, response status code and response headers
    def add_vat_return_with_http_info(vat_returns, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VatReturnApi.add_vat_return ...'
      end
      # verify the required parameter 'vat_returns' is set
      if @api_client.config.client_side_validation && vat_returns.nil?
        fail ArgumentError, "Missing the required parameter 'vat_returns' when calling VatReturnApi.add_vat_return"
      end
      # resource path
      local_var_path = '/vat_returns'

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
      post_body = @api_client.object_to_http_body(vat_returns)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VatReturn')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VatReturnApi#add_vat_return\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find VAT return by ID
    # Returns a single vat return if the user has access
    # @param id ID of vat return to fetch
    # @param [Hash] opts the optional parameters
    # @return [VatReturn]
    def find_vat_return_by_id(id, opts = {})
      data, _status_code, _headers = find_vat_return_by_id_with_http_info(id, opts)
      data
    end

    # Find VAT return by ID
    # Returns a single vat return if the user has access
    # @param id ID of vat return to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(VatReturn, Fixnum, Hash)>] VatReturn data, response status code and response headers
    def find_vat_return_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VatReturnApi.find_vat_return_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling VatReturnApi.find_vat_return_by_id"
      end
      # resource path
      local_var_path = '/vat_returns/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'VatReturn')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VatReturnApi#find_vat_return_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All vat return
    # Returns all vat return from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<VatReturn>]
    def find_vat_returns(opts = {})
      data, _status_code, _headers = find_vat_returns_with_http_info(opts)
      data
    end

    # All vat return
    # Returns all vat return from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<(Array<VatReturn>, Fixnum, Hash)>] Array<VatReturn> data, response status code and response headers
    def find_vat_returns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: VatReturnApi.find_vat_returns ...'
      end
      # resource path
      local_var_path = '/vat_returns'

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
        :return_type => 'Array<VatReturn>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: VatReturnApi#find_vat_returns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
