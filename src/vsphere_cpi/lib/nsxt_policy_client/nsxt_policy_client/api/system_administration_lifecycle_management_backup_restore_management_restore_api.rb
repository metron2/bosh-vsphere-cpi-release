=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Advance any suspended restore operation
    # Advance any currently suspended restore operation. The operation might have been suspended because (1) the user had suspended it previously, or (2) the operation is waiting for user input, to be provided as a part of the POST request body. This operation is only valid when a GET cluster/restore/status returns a status with value SUSPENDED. Otherwise, a 409 response is returned. 
    # @param advance_cluster_restore_request 
    # @param [Hash] opts the optional parameters
    # @return [ClusterRestoreStatus]
    def advance_cluster_restore_advance(advance_cluster_restore_request, opts = {})
      data, _status_code, _headers = advance_cluster_restore_advance_with_http_info(advance_cluster_restore_request, opts)
      data
    end

    # Advance any suspended restore operation
    # Advance any currently suspended restore operation. The operation might have been suspended because (1) the user had suspended it previously, or (2) the operation is waiting for user input, to be provided as a part of the POST request body. This operation is only valid when a GET cluster/restore/status returns a status with value SUSPENDED. Otherwise, a 409 response is returned. 
    # @param advance_cluster_restore_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterRestoreStatus, Fixnum, Hash)>] ClusterRestoreStatus data, response status code and response headers
    def advance_cluster_restore_advance_with_http_info(advance_cluster_restore_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.advance_cluster_restore_advance ...'
      end
      # verify the required parameter 'advance_cluster_restore_request' is set
      if @api_client.config.client_side_validation && advance_cluster_restore_request.nil?
        fail ArgumentError, "Missing the required parameter 'advance_cluster_restore_request' when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.advance_cluster_restore_advance"
      end
      # resource path
      local_var_path = '/cluster/restore?action=advance'

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
      post_body = @api_client.object_to_http_body(advance_cluster_restore_request)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClusterRestoreStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#advance_cluster_restore_advance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel any running restore operation
    # This operation is only valid when a restore is in suspended state. The UI user can cancel any restore operation when the restore is suspended either due to an error, or for a user input. The API user would need to monitor the progression of a restore by calling periodically \"/api/v1/cluster/restore/status\" API. The response object (ClusterRestoreStatus), contains a field \"endpoints\". The API user can cancel the restore process if 'cancel' action is shown in the endpoint field. This operation is only valid when a GET cluster/restore/status returns a status with value SUSPENDED. 
    # @param [Hash] opts the optional parameters
    # @return [ClusterRestoreStatus]
    def cancel_cluster_restore_cancel(opts = {})
      data, _status_code, _headers = cancel_cluster_restore_cancel_with_http_info(opts)
      data
    end

    # Cancel any running restore operation
    # This operation is only valid when a restore is in suspended state. The UI user can cancel any restore operation when the restore is suspended either due to an error, or for a user input. The API user would need to monitor the progression of a restore by calling periodically \&quot;/api/v1/cluster/restore/status\&quot; API. The response object (ClusterRestoreStatus), contains a field \&quot;endpoints\&quot;. The API user can cancel the restore process if &#39;cancel&#39; action is shown in the endpoint field. This operation is only valid when a GET cluster/restore/status returns a status with value SUSPENDED. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterRestoreStatus, Fixnum, Hash)>] ClusterRestoreStatus data, response status code and response headers
    def cancel_cluster_restore_cancel_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.cancel_cluster_restore_cancel ...'
      end
      # resource path
      local_var_path = '/cluster/restore?action=cancel'

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
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClusterRestoreStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#cancel_cluster_restore_cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deprecated. Configure Restore SFTP server credentials
    # Deprecated. Please use API /cluster/backups/config, to configure remote file server(where backed-up files are stored) details during restore. In older versions - Configure file server where the backed-up files used for the Restore operation are available. 
    # @param restore_configuration 
    # @param [Hash] opts the optional parameters
    # @return [RestoreConfiguration]
    def configure_restore_config(restore_configuration, opts = {})
      data, _status_code, _headers = configure_restore_config_with_http_info(restore_configuration, opts)
      data
    end

    # Deprecated. Configure Restore SFTP server credentials
    # Deprecated. Please use API /cluster/backups/config, to configure remote file server(where backed-up files are stored) details during restore. In older versions - Configure file server where the backed-up files used for the Restore operation are available. 
    # @param restore_configuration 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RestoreConfiguration, Fixnum, Hash)>] RestoreConfiguration data, response status code and response headers
    def configure_restore_config_with_http_info(restore_configuration, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.configure_restore_config ...'
      end
      # verify the required parameter 'restore_configuration' is set
      if @api_client.config.client_side_validation && restore_configuration.nil?
        fail ArgumentError, "Missing the required parameter 'restore_configuration' when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.configure_restore_config"
      end
      # resource path
      local_var_path = '/cluster/restore/config'

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
      post_body = @api_client.object_to_http_body(restore_configuration)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RestoreConfiguration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#configure_restore_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Deprecated. Get Restore configuration
    # Deprecated. Please use API /cluster/backups/config, to get remote file server(where backuped-up files are stored) details durign restore. In older versions - Get configuration information for the file server used to store backed-up files. Fields that contain secrets (password, passphrase) are not returned. 
    # @param [Hash] opts the optional parameters
    # @return [RestoreConfiguration]
    def get_restore_config(opts = {})
      data, _status_code, _headers = get_restore_config_with_http_info(opts)
      data
    end

    # Deprecated. Get Restore configuration
    # Deprecated. Please use API /cluster/backups/config, to get remote file server(where backuped-up files are stored) details durign restore. In older versions - Get configuration information for the file server used to store backed-up files. Fields that contain secrets (password, passphrase) are not returned. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RestoreConfiguration, Fixnum, Hash)>] RestoreConfiguration data, response status code and response headers
    def get_restore_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.get_restore_config ...'
      end
      # resource path
      local_var_path = '/cluster/restore/config'

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
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RestoreConfiguration')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#get_restore_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Initiate a restore operation
    # Start the restore of an NSX cluster, from some previously backed-up configuration. This operation is only valid when a GET cluster/restore/status returns a status with value NOT_STARTED. Otherwise, a 409 response is returned. 
    # @param initiate_cluster_restore_request 
    # @param [Hash] opts the optional parameters
    # @return [ClusterRestoreStatus]
    def initiate_cluster_restore_start(initiate_cluster_restore_request, opts = {})
      data, _status_code, _headers = initiate_cluster_restore_start_with_http_info(initiate_cluster_restore_request, opts)
      data
    end

    # Initiate a restore operation
    # Start the restore of an NSX cluster, from some previously backed-up configuration. This operation is only valid when a GET cluster/restore/status returns a status with value NOT_STARTED. Otherwise, a 409 response is returned. 
    # @param initiate_cluster_restore_request 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterRestoreStatus, Fixnum, Hash)>] ClusterRestoreStatus data, response status code and response headers
    def initiate_cluster_restore_start_with_http_info(initiate_cluster_restore_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.initiate_cluster_restore_start ...'
      end
      # verify the required parameter 'initiate_cluster_restore_request' is set
      if @api_client.config.client_side_validation && initiate_cluster_restore_request.nil?
        fail ArgumentError, "Missing the required parameter 'initiate_cluster_restore_request' when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.initiate_cluster_restore_start"
      end
      # resource path
      local_var_path = '/cluster/restore?action=start'

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
      post_body = @api_client.object_to_http_body(initiate_cluster_restore_request)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClusterRestoreStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#initiate_cluster_restore_start\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List timestamps of all available Cluster Backups.
    # Returns timestamps for all backup files that are available on the SFTP server. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ClusterBackupInfoListResult]
    def list_cluster_backup_timestamps(opts = {})
      data, _status_code, _headers = list_cluster_backup_timestamps_with_http_info(opts)
      data
    end

    # List timestamps of all available Cluster Backups.
    # Returns timestamps for all backup files that are available on the SFTP server. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ClusterBackupInfoListResult, Fixnum, Hash)>] ClusterBackupInfoListResult data, response status code and response headers
    def list_cluster_backup_timestamps_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.list_cluster_backup_timestamps ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.list_cluster_backup_timestamps, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.list_cluster_backup_timestamps, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/cluster/restore/backuptimestamps'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

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
        :return_type => 'ClusterBackupInfoListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#list_cluster_backup_timestamps\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List resources for a given instruction, to be shown to/executed by users. 
    # For restore operations requiring user input e.g. performing an action, accepting/rejecting an action, etc. the information to be conveyed to users is provided in this call. 
    # @param instruction_id Id of the instruction set whose instructions are to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ActionableResourceListResult]
    def list_restore_instruction_resources(instruction_id, opts = {})
      data, _status_code, _headers = list_restore_instruction_resources_with_http_info(instruction_id, opts)
      data
    end

    # List resources for a given instruction, to be shown to/executed by users. 
    # For restore operations requiring user input e.g. performing an action, accepting/rejecting an action, etc. the information to be conveyed to users is provided in this call. 
    # @param instruction_id Id of the instruction set whose instructions are to be returned
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ActionableResourceListResult, Fixnum, Hash)>] ActionableResourceListResult data, response status code and response headers
    def list_restore_instruction_resources_with_http_info(instruction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.list_restore_instruction_resources ...'
      end
      # verify the required parameter 'instruction_id' is set
      if @api_client.config.client_side_validation && instruction_id.nil?
        fail ArgumentError, "Missing the required parameter 'instruction_id' when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.list_restore_instruction_resources"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.list_restore_instruction_resources, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.list_restore_instruction_resources, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/cluster/restore/instruction-resources'

      # query parameters
      query_params = {}
      query_params[:'instruction_id'] = instruction_id
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

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
        :return_type => 'ActionableResourceListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#list_restore_instruction_resources\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Retry any failed restore operation
    # Retry any currently in-progress, failed restore operation. Only the last step of the multi-step restore operation would have failed,and only that step is retried. This operation is only valid when a GET cluster/restore/status returns a status with value FAILED. Otherwise, a 409 response is returned. 
    # @param [Hash] opts the optional parameters
    # @return [ClusterRestoreStatus]
    def retry_cluster_restore_retry(opts = {})
      data, _status_code, _headers = retry_cluster_restore_retry_with_http_info(opts)
      data
    end

    # Retry any failed restore operation
    # Retry any currently in-progress, failed restore operation. Only the last step of the multi-step restore operation would have failed,and only that step is retried. This operation is only valid when a GET cluster/restore/status returns a status with value FAILED. Otherwise, a 409 response is returned. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterRestoreStatus, Fixnum, Hash)>] ClusterRestoreStatus data, response status code and response headers
    def retry_cluster_restore_retry_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.retry_cluster_restore_retry ...'
      end
      # resource path
      local_var_path = '/cluster/restore?action=retry'

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
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClusterRestoreStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#retry_cluster_restore_retry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Suspend any running restore operation
    # Suspend any currently running restore operation. The restore operation is made up of a number of steps. When this call is issued, any currently running step is allowed to finish (successfully or with errors), and the next step (and therefore the entire restore operation) is suspended until a subsequent resume or cancel call is issued. This operation is only valid when a GET cluster/restore/status returns a status with value RUNNING. Otherwise, a 409 response is returned. 
    # @param [Hash] opts the optional parameters
    # @return [ClusterRestoreStatus]
    def suspend_cluster_restore_suspend(opts = {})
      data, _status_code, _headers = suspend_cluster_restore_suspend_with_http_info(opts)
      data
    end

    # Suspend any running restore operation
    # Suspend any currently running restore operation. The restore operation is made up of a number of steps. When this call is issued, any currently running step is allowed to finish (successfully or with errors), and the next step (and therefore the entire restore operation) is suspended until a subsequent resume or cancel call is issued. This operation is only valid when a GET cluster/restore/status returns a status with value RUNNING. Otherwise, a 409 response is returned. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClusterRestoreStatus, Fixnum, Hash)>] ClusterRestoreStatus data, response status code and response headers
    def suspend_cluster_restore_suspend_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi.suspend_cluster_restore_suspend ...'
      end
      # resource path
      local_var_path = '/cluster/restore?action=suspend'

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
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ClusterRestoreStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationLifecycleManagementBackupRestoreManagementRestoreApi#suspend_cluster_restore_suspend\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end