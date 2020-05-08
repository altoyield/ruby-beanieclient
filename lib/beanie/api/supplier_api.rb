=begin
#Beanie ERP API

#An API specification for interacting with the Beanie ERP system

OpenAPI spec version: 0.2
Contact: dev@bean.ie
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'uri'

module Beanie
  class SupplierApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new supplier in the system
    # @param suppliers Supplier to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Supplier]
    def add_supplier(suppliers, opts = {})
      data, _status_code, _headers = add_supplier_with_http_info(suppliers, opts)
      data
    end

    # Creates a new supplier in the system
    # @param suppliers Supplier to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Array<(Supplier, Fixnum, Hash)>] Supplier data, response status code and response headers
    def add_supplier_with_http_info(suppliers, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SupplierApi.add_supplier ...'
      end
      # verify the required parameter 'suppliers' is set
      if @api_client.config.client_side_validation && suppliers.nil?
        fail ArgumentError, "Missing the required parameter 'suppliers' when calling SupplierApi.add_supplier"
      end
      # resource path
      local_var_path = '/suppliers'

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
      post_body = @api_client.object_to_http_body(suppliers)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Supplier')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SupplierApi#add_supplier\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find Supplier by ID
    # Returns a single supplier if the user has access
    # @param id ID of supplier to fetch
    # @param [Hash] opts the optional parameters
    # @return [Supplier]
    def find_supplier_by_id(id, opts = {})
      data, _status_code, _headers = find_supplier_by_id_with_http_info(id, opts)
      data
    end

    # Find Supplier by ID
    # Returns a single supplier if the user has access
    # @param id ID of supplier to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(Supplier, Fixnum, Hash)>] Supplier data, response status code and response headers
    def find_supplier_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SupplierApi.find_supplier_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SupplierApi.find_supplier_by_id"
      end
      # resource path
      local_var_path = '/suppliers/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Supplier')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SupplierApi#find_supplier_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All supplier
    # Returns all supplier from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<Supplier>]
    def find_suppliers(opts = {})
      data, _status_code, _headers = find_suppliers_with_http_info(opts)
      data
    end

    # All supplier
    # Returns all supplier from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<(Array<Supplier>, Fixnum, Hash)>] Array<Supplier> data, response status code and response headers
    def find_suppliers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SupplierApi.find_suppliers ...'
      end
      # resource path
      local_var_path = '/suppliers'

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
        :return_type => 'Array<Supplier>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SupplierApi#find_suppliers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end