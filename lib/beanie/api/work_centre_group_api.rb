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
  class WorkCentreGroupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Find Work centre group by ID
    # Returns a single work centre group if the user has access
    # @param id ID of work centre group to fetch
    # @param [Hash] opts the optional parameters
    # @return [WorkCentreGroup]
    def find_work_centre_group_by_id(id, opts = {})
      data, _status_code, _headers = find_work_centre_group_by_id_with_http_info(id, opts)
      data
    end

    # Find Work centre group by ID
    # Returns a single work centre group if the user has access
    # @param id ID of work centre group to fetch
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkCentreGroup, Fixnum, Hash)>] WorkCentreGroup data, response status code and response headers
    def find_work_centre_group_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkCentreGroupApi.find_work_centre_group_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkCentreGroupApi.find_work_centre_group_by_id"
      end
      # resource path
      local_var_path = '/work_centre_groups/{id}'.sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'WorkCentreGroup')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkCentreGroupApi#find_work_centre_group_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # All work centre group
    # Returns all work centre group from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<WorkCentreGroup>]
    def find_work_centre_groups(opts = {})
      data, _status_code, _headers = find_work_centre_groups_with_http_info(opts)
      data
    end

    # All work centre group
    # Returns all work centre group from the system that the user has access to
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :tags tags to filter by
    # @option opts [Integer] :limit Maximum number of results to return
    # @return [Array<(Array<WorkCentreGroup>, Fixnum, Hash)>] Array<WorkCentreGroup> data, response status code and response headers
    def find_work_centre_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkCentreGroupApi.find_work_centre_groups ...'
      end
      # resource path
      local_var_path = '/work_centre_groups'

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
        :return_type => 'Array<WorkCentreGroup>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkCentreGroupApi#find_work_centre_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
