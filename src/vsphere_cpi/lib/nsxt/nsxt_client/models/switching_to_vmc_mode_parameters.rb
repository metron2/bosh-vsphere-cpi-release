=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT
  # Possible values of a mode in a \"/config/nsx_appliance_mode\" file
  class SwitchingToVmcModeParameters
    # Possible enum values in a \"/config/nsx_appliance_mode\" file
    attr_accessor :mode_id

    # Relative path on CSP server to the Org location. Can be \"/csp/gateway/am/api/orgs/\".
    attr_accessor :csp_org_uri

    # Org ID of a Client - commonly UUID.
    attr_accessor :default_org_id

    # IP/host of PoP (Point-of-Presence) Http proxy server
    attr_accessor :proxy_host

    # Org ID and role of \"Enterprise Admin\"
    attr_accessor :sre_org

    # Org ID and role of \"Global Support Services\"
    attr_accessor :gss_org

    # Org ID and role of \"Site Reliability Engineer\"
    attr_accessor :ea_org

    # CSP time drift in milliseconds
    attr_accessor :csp_time_drift

    # Protocol and domain name (or IP address) of a CSP server, like \"https://console-stg.cloud.vmware.com\".
    attr_accessor :base_url

    # SDDC id
    attr_accessor :sddc_id

    # Port of PoP (Point-of-Presence) Http proxy server
    attr_accessor :proxy_port

    # Client's credentials on CSP server
    attr_accessor :csp_client_credential

    # Client's credentials.
    attr_accessor :auth_code

    # When this parameter is set to true, only a change in the node mode happens without any update to auth properties. The required params would need to provided but they would be ignored in the backed. When this param is not set to true i.e. set to false or not provided, the mode change and auth properties update will both happen.
    attr_accessor :mode_change_only

    # List of incoming client IDs
    attr_accessor :csp_client_incoming_credentials

    # Service definition id
    attr_accessor :service_definition_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'mode_id' => :'mode_id',
        :'csp_org_uri' => :'csp_org_uri',
        :'default_org_id' => :'default_org_id',
        :'proxy_host' => :'proxy_host',
        :'sre_org' => :'sre_org',
        :'gss_org' => :'gss_org',
        :'ea_org' => :'ea_org',
        :'csp_time_drift' => :'csp_time_drift',
        :'base_url' => :'base_url',
        :'sddc_id' => :'sddc_id',
        :'proxy_port' => :'proxy_port',
        :'csp_client_credential' => :'csp_client_credential',
        :'auth_code' => :'auth_code',
        :'mode_change_only' => :'mode_change_only',
        :'csp_client_incoming_credentials' => :'csp_client_incoming_credentials',
        :'service_definition_id' => :'service_definition_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'mode_id' => :'String',
        :'csp_org_uri' => :'String',
        :'default_org_id' => :'String',
        :'proxy_host' => :'String',
        :'sre_org' => :'OrgInfo',
        :'gss_org' => :'OrgInfo',
        :'ea_org' => :'OrgInfo',
        :'csp_time_drift' => :'Integer',
        :'base_url' => :'String',
        :'sddc_id' => :'String',
        :'proxy_port' => :'Integer',
        :'csp_client_credential' => :'Oauth2Credentials',
        :'auth_code' => :'Oauth2Credentials',
        :'mode_change_only' => :'BOOLEAN',
        :'csp_client_incoming_credentials' => :'Array<String>',
        :'service_definition_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'mode_id')
        self.mode_id = attributes[:'mode_id']
      end

      if attributes.has_key?(:'csp_org_uri')
        self.csp_org_uri = attributes[:'csp_org_uri']
      end

      if attributes.has_key?(:'default_org_id')
        self.default_org_id = attributes[:'default_org_id']
      end

      if attributes.has_key?(:'proxy_host')
        self.proxy_host = attributes[:'proxy_host']
      end

      if attributes.has_key?(:'sre_org')
        self.sre_org = attributes[:'sre_org']
      end

      if attributes.has_key?(:'gss_org')
        self.gss_org = attributes[:'gss_org']
      end

      if attributes.has_key?(:'ea_org')
        self.ea_org = attributes[:'ea_org']
      end

      if attributes.has_key?(:'csp_time_drift')
        self.csp_time_drift = attributes[:'csp_time_drift']
      end

      if attributes.has_key?(:'base_url')
        self.base_url = attributes[:'base_url']
      end

      if attributes.has_key?(:'sddc_id')
        self.sddc_id = attributes[:'sddc_id']
      end

      if attributes.has_key?(:'proxy_port')
        self.proxy_port = attributes[:'proxy_port']
      end

      if attributes.has_key?(:'csp_client_credential')
        self.csp_client_credential = attributes[:'csp_client_credential']
      end

      if attributes.has_key?(:'auth_code')
        self.auth_code = attributes[:'auth_code']
      end

      if attributes.has_key?(:'mode_change_only')
        self.mode_change_only = attributes[:'mode_change_only']
      end

      if attributes.has_key?(:'csp_client_incoming_credentials')
        if (value = attributes[:'csp_client_incoming_credentials']).is_a?(Array)
          self.csp_client_incoming_credentials = value
        end
      end

      if attributes.has_key?(:'service_definition_id')
        self.service_definition_id = attributes[:'service_definition_id']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @mode_id.nil?
        invalid_properties.push("invalid value for 'mode_id', mode_id cannot be nil.")
      end

      if @csp_org_uri.nil?
        invalid_properties.push("invalid value for 'csp_org_uri', csp_org_uri cannot be nil.")
      end

      if @default_org_id.nil?
        invalid_properties.push("invalid value for 'default_org_id', default_org_id cannot be nil.")
      end

      if @base_url.nil?
        invalid_properties.push("invalid value for 'base_url', base_url cannot be nil.")
      end

      if !@proxy_port.nil? && @proxy_port > 65535
        invalid_properties.push("invalid value for 'proxy_port', must be smaller than or equal to 65535.")
      end

      if !@proxy_port.nil? && @proxy_port < 1
        invalid_properties.push("invalid value for 'proxy_port', must be greater than or equal to 1.")
      end

      if @auth_code.nil?
        invalid_properties.push("invalid value for 'auth_code', auth_code cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @mode_id.nil?
      mode_id_validator = EnumAttributeValidator.new('String', ["ON_PREM", "SERVICE", "VMC", "VMC_LOCAL"])
      return false unless mode_id_validator.valid?(@mode_id)
      return false if @csp_org_uri.nil?
      return false if @default_org_id.nil?
      return false if @base_url.nil?
      return false if !@proxy_port.nil? && @proxy_port > 65535
      return false if !@proxy_port.nil? && @proxy_port < 1
      return false if @auth_code.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mode_id Object to be assigned
    def mode_id=(mode_id)
      validator = EnumAttributeValidator.new('String', ["ON_PREM", "SERVICE", "VMC", "VMC_LOCAL"])
      unless validator.valid?(mode_id)
        fail ArgumentError, "invalid value for 'mode_id', must be one of #{validator.allowable_values}."
      end
      @mode_id = mode_id
    end

    # Custom attribute writer method with validation
    # @param [Object] proxy_port Value to be assigned
    def proxy_port=(proxy_port)

      if !proxy_port.nil? && proxy_port > 65535
        fail ArgumentError, "invalid value for 'proxy_port', must be smaller than or equal to 65535."
      end

      if !proxy_port.nil? && proxy_port < 1
        fail ArgumentError, "invalid value for 'proxy_port', must be greater than or equal to 1."
      end

      @proxy_port = proxy_port
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          mode_id == o.mode_id &&
          csp_org_uri == o.csp_org_uri &&
          default_org_id == o.default_org_id &&
          proxy_host == o.proxy_host &&
          sre_org == o.sre_org &&
          gss_org == o.gss_org &&
          ea_org == o.ea_org &&
          csp_time_drift == o.csp_time_drift &&
          base_url == o.base_url &&
          sddc_id == o.sddc_id &&
          proxy_port == o.proxy_port &&
          csp_client_credential == o.csp_client_credential &&
          auth_code == o.auth_code &&
          mode_change_only == o.mode_change_only &&
          csp_client_incoming_credentials == o.csp_client_incoming_credentials &&
          service_definition_id == o.service_definition_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [mode_id, csp_org_uri, default_org_id, proxy_host, sre_org, gss_org, ea_org, csp_time_drift, base_url, sddc_id, proxy_port, csp_client_credential, auth_code, mode_change_only, csp_client_incoming_credentials, service_definition_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
