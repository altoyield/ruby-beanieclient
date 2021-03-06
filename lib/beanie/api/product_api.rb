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
  class ProductApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new product in the system
    # @param products Product to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def add_product(products, opts = {})
      data, _status_code, _headers = add_product_with_http_info(products, opts)
      data
    end

    # Creates a new product in the system
    # @param products Product to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
    def add_product_with_http_info(products, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.add_product ...'
      end
      # verify the required parameter 'products' is set
      if @api_client.config.client_side_validation && products.nil?
        fail ArgumentError, "Missing the required parameter 'products' when calling ProductApi.add_product"
      end
      # resource path
      local_var_path = '/products'

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
      post_body = @api_client.object_to_http_body(products)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Product')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#add_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find Product by ID
    # Returns a single product if the user has access
    # @param id ID of product to fetch
    # @param [Hash] opts the optional parameters
    # @return [Product]
    def find_product_by_id(id, opts = {})
      data, _status_code, _headers = find_product_by_id_with_http_info(id, opts)
      data
    end

    # Find Product by ID
    # Returns a single product if the user has access
    # @param id ID of product to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
    def find_product_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.find_product_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ProductApi.find_product_by_id"
      end
      # resource path
      local_var_path = '/products/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Product')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#find_product_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All product
    # Returns all product from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<Product>]
    def find_products(opts = {})
      data, _status_code, _headers = find_products_with_http_info(opts)
      data
    end

    # All product
    # Returns all product from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<(Array<Product>, Fixnum, Hash)>] Array<Product> data, response status code and response headers
    def find_products_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.find_products ...'
      end
      # resource path
      local_var_path = '/products'

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
        :return_type => 'Array<Product>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#find_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
