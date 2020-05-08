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
  class AddressBlockApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new address block in the system
    # @param address_blocks Address block to add to the system
    # @param [Hash] opts the optional parameters
    # @return [AddressBlock]
    def add_address_block(address_blocks, opts = {})
      data, _status_code, _headers = add_address_block_with_http_info(address_blocks, opts)
      data
    end

    # Creates a new address block in the system
    # @param address_blocks Address block to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddressBlock, Fixnum, Hash)>] AddressBlock data, response status code and response headers
    def add_address_block_with_http_info(address_blocks, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddressBlockApi.add_address_block ...'
      end
      # verify the required parameter 'address_blocks' is set
      if @api_client.config.client_side_validation && address_blocks.nil?
        fail ArgumentError, "Missing the required parameter 'address_blocks' when calling AddressBlockApi.add_address_block"
      end
      # resource path
      local_var_path = '/address_blocks'

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
      post_body = @api_client.object_to_http_body(address_blocks)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AddressBlock')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressBlockApi#add_address_block\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find Address block by ID
    # Returns a single address block if the user has access
    # @param id ID of address block to fetch
    # @param [Hash] opts the optional parameters
    # @return [AddressBlock]
    def find_address_block_by_id(id, opts = {})
      data, _status_code, _headers = find_address_block_by_id_with_http_info(id, opts)
      data
    end

    # Find Address block by ID
    # Returns a single address block if the user has access
    # @param id ID of address block to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(AddressBlock, Fixnum, Hash)>] AddressBlock data, response status code and response headers
    def find_address_block_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddressBlockApi.find_address_block_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AddressBlockApi.find_address_block_by_id"
      end
      # resource path
      local_var_path = '/address_blocks/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'AddressBlock')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressBlockApi#find_address_block_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All address block
    # Returns all address block from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<AddressBlock>]
    def find_address_blocks(opts = {})
      data, _status_code, _headers = find_address_blocks_with_http_info(opts)
      data
    end

    # All address block
    # Returns all address block from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<(Array<AddressBlock>, Fixnum, Hash)>] Array<AddressBlock> data, response status code and response headers
    def find_address_blocks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AddressBlockApi.find_address_blocks ...'
      end
      # resource path
      local_var_path = '/address_blocks'

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
        :return_type => 'Array<AddressBlock>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AddressBlockApi#find_address_blocks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
