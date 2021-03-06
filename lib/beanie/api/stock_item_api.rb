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
  class StockItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new stock item in the system
    # @param stock_items Stock item to add to the system
    # @param [Hash] opts the optional parameters
    # @return [StockItem]
    def add_stock_item(stock_items, opts = {})
      data, _status_code, _headers = add_stock_item_with_http_info(stock_items, opts)
      data
    end

    # Creates a new stock item in the system
    # @param stock_items Stock item to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Array<(StockItem, Fixnum, Hash)>] StockItem data, response status code and response headers
    def add_stock_item_with_http_info(stock_items, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockItemApi.add_stock_item ...'
      end
      # verify the required parameter 'stock_items' is set
      if @api_client.config.client_side_validation && stock_items.nil?
        fail ArgumentError, "Missing the required parameter 'stock_items' when calling StockItemApi.add_stock_item"
      end
      # resource path
      local_var_path = '/stock_items'

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
      post_body = @api_client.object_to_http_body(stock_items)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StockItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockItemApi#add_stock_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find Stock item by ID
    # Returns a single stock item if the user has access
    # @param id ID of stock item to fetch
    # @param [Hash] opts the optional parameters
    # @return [StockItem]
    def find_stock_item_by_id(id, opts = {})
      data, _status_code, _headers = find_stock_item_by_id_with_http_info(id, opts)
      data
    end

    # Find Stock item by ID
    # Returns a single stock item if the user has access
    # @param id ID of stock item to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(StockItem, Fixnum, Hash)>] StockItem data, response status code and response headers
    def find_stock_item_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockItemApi.find_stock_item_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StockItemApi.find_stock_item_by_id"
      end
      # resource path
      local_var_path = '/stock_items/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'StockItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockItemApi#find_stock_item_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All stock item
    # Returns all stock item from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<StockItem>]
    def find_stock_items(opts = {})
      data, _status_code, _headers = find_stock_items_with_http_info(opts)
      data
    end

    # All stock item
    # Returns all stock item from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<(Array<StockItem>, Fixnum, Hash)>] Array<StockItem> data, response status code and response headers
    def find_stock_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StockItemApi.find_stock_items ...'
      end
      # resource path
      local_var_path = '/stock_items'

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
        :return_type => 'Array<StockItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StockItemApi#find_stock_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
