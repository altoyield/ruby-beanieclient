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
  class BillOfMaterialsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Creates a new bill of materials in the system
    # @param bill_of_materials Bill of Materials to add to the system
    # @param [Hash] opts the optional parameters
    # @return [BillOfMaterial]
    def add_bill_of_material(bill_of_materials, opts = {})
      data, _status_code, _headers = add_bill_of_material_with_http_info(bill_of_materials, opts)
      data
    end

    # Creates a new bill of materials in the system
    # @param bill_of_materials Bill of Materials to add to the system
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillOfMaterial, Fixnum, Hash)>] BillOfMaterial data, response status code and response headers
    def add_bill_of_material_with_http_info(bill_of_materials, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillOfMaterialsApi.add_bill_of_material ...'
      end
      # verify the required parameter 'bill_of_materials' is set
      if @api_client.config.client_side_validation && bill_of_materials.nil?
        fail ArgumentError, "Missing the required parameter 'bill_of_materials' when calling BillOfMaterialsApi.add_bill_of_material"
      end
      # resource path
      local_var_path = '/bill_of_materials'

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
      post_body = @api_client.object_to_http_body(bill_of_materials)
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BillOfMaterial')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillOfMaterialsApi#add_bill_of_material\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Find Bill of Materials by ID
    # Returns a single bill of materials if the user has access
    # @param id ID of bill of materials to fetch
    # @param [Hash] opts the optional parameters
    # @return [BillOfMaterial]
    def find_bill_of_material_by_id(id, opts = {})
      data, _status_code, _headers = find_bill_of_material_by_id_with_http_info(id, opts)
      data
    end

    # Find Bill of Materials by ID
    # Returns a single bill of materials if the user has access
    # @param id ID of bill of materials to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillOfMaterial, Fixnum, Hash)>] BillOfMaterial data, response status code and response headers
    def find_bill_of_material_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillOfMaterialsApi.find_bill_of_material_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BillOfMaterialsApi.find_bill_of_material_by_id"
      end
      # resource path
      local_var_path = '/bill_of_materials/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'BillOfMaterial')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillOfMaterialsApi#find_bill_of_material_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All bill of materials
    # Returns all bill of materials from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<BillOfMaterial>]
    def find_bill_of_materials(opts = {})
      data, _status_code, _headers = find_bill_of_materials_with_http_info(opts)
      data
    end

    # All bill of materials
    # Returns all bill of materials from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<(Array<BillOfMaterial>, Fixnum, Hash)>] Array<BillOfMaterial> data, response status code and response headers
    def find_bill_of_materials_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillOfMaterialsApi.find_bill_of_materials ...'
      end
      # resource path
      local_var_path = '/bill_of_materials'

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
        :return_type => 'Array<BillOfMaterial>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillOfMaterialsApi#find_bill_of_materials\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
