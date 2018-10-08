=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module NSXT
  class TransportEntitiesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Tunnel properties
    # Tunnel properties
    # @param node_id ID of transport node
    # @param tunnel_name Tunnel name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [TunnelProperties]
    def get_tunnel(node_id, tunnel_name, opts = {})
      data, _status_code, _headers = get_tunnel_with_http_info(node_id, tunnel_name, opts)
      return data
    end

    # Tunnel properties
    # Tunnel properties
    # @param node_id ID of transport node
    # @param tunnel_name Tunnel name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :source Data source type.
    # @return [Array<(TunnelProperties, Fixnum, Hash)>] TunnelProperties data, response status code and response headers
    def get_tunnel_with_http_info(node_id, tunnel_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransportEntitiesApi.get_tunnel ..."
      end
      # verify the required parameter 'node_id' is set
      if @api_client.config.client_side_validation && node_id.nil?
        fail ArgumentError, "Missing the required parameter 'node_id' when calling TransportEntitiesApi.get_tunnel"
      end
      # verify the required parameter 'tunnel_name' is set
      if @api_client.config.client_side_validation && tunnel_name.nil?
        fail ArgumentError, "Missing the required parameter 'tunnel_name' when calling TransportEntitiesApi.get_tunnel"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = "/transport-nodes/{node-id}/tunnels/{tunnel-name}".sub('{' + 'node-id' + '}', node_id.to_s).sub('{' + 'tunnel-name' + '}', tunnel_name.to_s)

      # query parameters
      query_params = {}
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

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
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TunnelProperties')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransportEntitiesApi#get_tunnel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of tunnels
    # List of tunnels
    # @param node_id ID of transport node
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bfd_diagnostic_code BFD diagnostic code of Tunnel as defined in RFC 5880
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [String] :remote_node_id 
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :source Data source type.
    # @option opts [String] :status Tunnel status
    # @return [TunnelList]
    def query_tunnels(node_id, opts = {})
      data, _status_code, _headers = query_tunnels_with_http_info(node_id, opts)
      return data
    end

    # List of tunnels
    # List of tunnels
    # @param node_id ID of transport node
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bfd_diagnostic_code BFD diagnostic code of Tunnel as defined in RFC 5880
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [String] :remote_node_id 
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :source Data source type.
    # @option opts [String] :status Tunnel status
    # @return [Array<(TunnelList, Fixnum, Hash)>] TunnelList data, response status code and response headers
    def query_tunnels_with_http_info(node_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransportEntitiesApi.query_tunnels ..."
      end
      # verify the required parameter 'node_id' is set
      if @api_client.config.client_side_validation && node_id.nil?
        fail ArgumentError, "Missing the required parameter 'node_id' when calling TransportEntitiesApi.query_tunnels"
      end
      if @api_client.config.client_side_validation && opts[:'bfd_diagnostic_code'] && !['0', 'NO_DIAGNOSTIC', '1', 'CONTROL_DETECTION_TIME_EXPIRED', '2', 'ECHO_FUNCTION_FAILED', '3', 'NEIGHBOR_SIGNALED_SESSION_DOWN', '4', 'FORWARDING_PLANE_RESET', '5', 'PATH_DOWN', '6', 'CONCATENATED_PATH_DOWN', '7', 'ADMINISTRATIVELY_DOWN', '8', 'REVERSE_CONCATENATED_PATH_DOWN'].include?(opts[:'bfd_diagnostic_code'])
        fail ArgumentError, 'invalid value for "bfd_diagnostic_code", must be one of 0, NO_DIAGNOSTIC, 1, CONTROL_DETECTION_TIME_EXPIRED, 2, ECHO_FUNCTION_FAILED, 3, NEIGHBOR_SIGNALED_SESSION_DOWN, 4, FORWARDING_PLANE_RESET, 5, PATH_DOWN, 6, CONCATENATED_PATH_DOWN, 7, ADMINISTRATIVELY_DOWN, 8, REVERSE_CONCATENATED_PATH_DOWN'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TransportEntitiesApi.query_tunnels, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling TransportEntitiesApi.query_tunnels, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['UP', 'DOWN'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of UP, DOWN'
      end
      # resource path
      local_var_path = "/transport-nodes/{node-id}/tunnels".sub('{' + 'node-id' + '}', node_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'bfd_diagnostic_code'] = opts[:'bfd_diagnostic_code'] if !opts[:'bfd_diagnostic_code'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'remote_node_id'] = opts[:'remote_node_id'] if !opts[:'remote_node_id'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

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
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TunnelList')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransportEntitiesApi#query_tunnels\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
