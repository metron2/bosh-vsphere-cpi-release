=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class LbPool
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Indicates system owned resource
    attr_accessor :_system_owned

    # Defaults to ID if not set
    attr_accessor :display_name

    # Description of this resource
    attr_accessor :description

    # Opaque identifiers meaningful to the API user
    attr_accessor :tags

    # ID of the user who created this resource
    attr_accessor :_create_user

    # Protection status is one of the following: PROTECTED - the client who retrieved the entity is not allowed             to modify it. NOT_PROTECTED - the client who retrieved the entity is allowed                 to modify it REQUIRE_OVERRIDE - the client who retrieved the entity is a super                    user and can modify it, but only when providing                    the request header X-Allow-Overwrite=true. UNKNOWN - the _protection field could not be determined for this           entity. 
    attr_accessor :_protection

    # Timestamp of resource creation
    attr_accessor :_create_time

    # Timestamp of last modification
    attr_accessor :_last_modified_time

    # ID of the user who last modified this resource
    attr_accessor :_last_modified_user

    # Unique identifier of this resource
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # Load balancer pool support grouping object as dynamic pool members. When member group is defined, members setting should not be specified. 
    attr_accessor :member_group

    # Depending on the topology, Source NAT (SNAT) may be required to ensure traffic from the server destined to the client is received by the load balancer. SNAT can be enabled per pool. If SNAT is not enabled for a pool, then load balancer uses the client IP and port (spoofing) while establishing connections to the servers. This is referred to as no-SNAT or TRANSPARENT mode. 
    attr_accessor :snat_translation

    # Load balancing algorithm, configurable per pool controls how the incoming connections are distributed among the members. 
    attr_accessor :algorithm

    # Server pool consists of one or more pool members. Each pool member is identified, typically, by an IP address and a port. 
    attr_accessor :members

    # Passive healthchecks are disabled by default and can be enabled by attaching a passive health monitor to a server pool. Each time a client connection to a pool member fails, its failed count is incremented. For pools bound to L7 virtual servers, a connection is considered to be failed and failed count is incremented if any TCP connection errors (e.g. TCP RST or failure to send data) or SSL handshake failures occur. For pools bound to L4 virtual servers, if no response is received to a TCP SYN sent to the pool member or if a TCP RST is received in response to a TCP SYN, then the pool member is considered to have failed and the failed count is incremented. 
    attr_accessor :passive_monitor_id

    # The maximum number of TCP connections per pool that are idly kept alive for sending future client requests. 
    attr_accessor :tcp_multiplexing_number

    # In case of active healthchecks, load balancer itself initiates new connections (or sends ICMP ping) to the servers periodically to check their health, completely independent of any data traffic. Active healthchecks are disabled by default and can be enabled for a server pool by binding a health monitor to the pool. Currently, only one active health monitor can be configured per server pool. 
    attr_accessor :active_monitor_ids

    # TCP multiplexing allows the same TCP connection between load balancer and the backend server to be used for sending multiple client requests from different client TCP connections. 
    attr_accessor :tcp_multiplexing_enabled

    # A pool is considered active if there are at least certain minimum number of members. 
    attr_accessor :min_active_members

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
        :'_self' => :'_self',
        :'_links' => :'_links',
        :'_schema' => :'_schema',
        :'_revision' => :'_revision',
        :'_system_owned' => :'_system_owned',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'tags' => :'tags',
        :'_create_user' => :'_create_user',
        :'_protection' => :'_protection',
        :'_create_time' => :'_create_time',
        :'_last_modified_time' => :'_last_modified_time',
        :'_last_modified_user' => :'_last_modified_user',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'member_group' => :'member_group',
        :'snat_translation' => :'snat_translation',
        :'algorithm' => :'algorithm',
        :'members' => :'members',
        :'passive_monitor_id' => :'passive_monitor_id',
        :'tcp_multiplexing_number' => :'tcp_multiplexing_number',
        :'active_monitor_ids' => :'active_monitor_ids',
        :'tcp_multiplexing_enabled' => :'tcp_multiplexing_enabled',
        :'min_active_members' => :'min_active_members'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_revision' => :'Integer',
        :'_system_owned' => :'BOOLEAN',
        :'display_name' => :'String',
        :'description' => :'String',
        :'tags' => :'Array<Tag>',
        :'_create_user' => :'String',
        :'_protection' => :'String',
        :'_create_time' => :'Integer',
        :'_last_modified_time' => :'Integer',
        :'_last_modified_user' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'member_group' => :'PoolMemberGroup',
        :'snat_translation' => :'LbSnatTranslation',
        :'algorithm' => :'String',
        :'members' => :'Array<PoolMember>',
        :'passive_monitor_id' => :'String',
        :'tcp_multiplexing_number' => :'Integer',
        :'active_monitor_ids' => :'Array<String>',
        :'tcp_multiplexing_enabled' => :'BOOLEAN',
        :'min_active_members' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_self')
        self._self = attributes[:'_self']
      end

      if attributes.has_key?(:'_links')
        if (value = attributes[:'_links']).is_a?(Array)
          self._links = value
        end
      end

      if attributes.has_key?(:'_schema')
        self._schema = attributes[:'_schema']
      end

      if attributes.has_key?(:'_revision')
        self._revision = attributes[:'_revision']
      end

      if attributes.has_key?(:'_system_owned')
        self._system_owned = attributes[:'_system_owned']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.has_key?(:'_create_user')
        self._create_user = attributes[:'_create_user']
      end

      if attributes.has_key?(:'_protection')
        self._protection = attributes[:'_protection']
      end

      if attributes.has_key?(:'_create_time')
        self._create_time = attributes[:'_create_time']
      end

      if attributes.has_key?(:'_last_modified_time')
        self._last_modified_time = attributes[:'_last_modified_time']
      end

      if attributes.has_key?(:'_last_modified_user')
        self._last_modified_user = attributes[:'_last_modified_user']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'member_group')
        self.member_group = attributes[:'member_group']
      end

      if attributes.has_key?(:'snat_translation')
        self.snat_translation = attributes[:'snat_translation']
      end

      if attributes.has_key?(:'algorithm')
        self.algorithm = attributes[:'algorithm']
      else
        self.algorithm = "ROUND_ROBIN"
      end

      if attributes.has_key?(:'members')
        if (value = attributes[:'members']).is_a?(Array)
          self.members = value
        end
      end

      if attributes.has_key?(:'passive_monitor_id')
        self.passive_monitor_id = attributes[:'passive_monitor_id']
      end

      if attributes.has_key?(:'tcp_multiplexing_number')
        self.tcp_multiplexing_number = attributes[:'tcp_multiplexing_number']
      else
        self.tcp_multiplexing_number = 6
      end

      if attributes.has_key?(:'active_monitor_ids')
        if (value = attributes[:'active_monitor_ids']).is_a?(Array)
          self.active_monitor_ids = value
        end
      end

      if attributes.has_key?(:'tcp_multiplexing_enabled')
        self.tcp_multiplexing_enabled = attributes[:'tcp_multiplexing_enabled']
      else
        self.tcp_multiplexing_enabled = false
      end

      if attributes.has_key?(:'min_active_members')
        self.min_active_members = attributes[:'min_active_members']
      else
        self.min_active_members = 1
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push("invalid value for 'display_name', the character length must be smaller than or equal to 255.")
      end

      if !@description.nil? && @description.to_s.length > 1024
        invalid_properties.push("invalid value for 'description', the character length must be smaller than or equal to 1024.")
      end

      if !@tcp_multiplexing_number.nil? && @tcp_multiplexing_number > 2147483647
        invalid_properties.push("invalid value for 'tcp_multiplexing_number', must be smaller than or equal to 2147483647.")
      end

      if !@tcp_multiplexing_number.nil? && @tcp_multiplexing_number < 0
        invalid_properties.push("invalid value for 'tcp_multiplexing_number', must be greater than or equal to 0.")
      end

      if !@min_active_members.nil? && @min_active_members > 2147483647
        invalid_properties.push("invalid value for 'min_active_members', must be smaller than or equal to 2147483647.")
      end

      if !@min_active_members.nil? && @min_active_members < 1
        invalid_properties.push("invalid value for 'min_active_members', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      algorithm_validator = EnumAttributeValidator.new('String', ["ROUND_ROBIN", "WEIGHTED_ROUND_ROBIN", "LEAST_CONNECTION", "WEIGHTED_LEAST_CONNECTION", "IP_HASH"])
      return false unless algorithm_validator.valid?(@algorithm)
      return false if !@tcp_multiplexing_number.nil? && @tcp_multiplexing_number > 2147483647
      return false if !@tcp_multiplexing_number.nil? && @tcp_multiplexing_number < 0
      return false if !@min_active_members.nil? && @min_active_members > 2147483647
      return false if !@min_active_members.nil? && @min_active_members < 1
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)

      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, "invalid value for 'display_name', the character length must be smaller than or equal to 255."
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)

      if !description.nil? && description.to_s.length > 1024
        fail ArgumentError, "invalid value for 'description', the character length must be smaller than or equal to 1024."
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] algorithm Object to be assigned
    def algorithm=(algorithm)
      validator = EnumAttributeValidator.new('String', ["ROUND_ROBIN", "WEIGHTED_ROUND_ROBIN", "LEAST_CONNECTION", "WEIGHTED_LEAST_CONNECTION", "IP_HASH"])
      unless validator.valid?(algorithm)
        fail ArgumentError, "invalid value for 'algorithm', must be one of #{validator.allowable_values}."
      end
      @algorithm = algorithm
    end

    # Custom attribute writer method with validation
    # @param [Object] tcp_multiplexing_number Value to be assigned
    def tcp_multiplexing_number=(tcp_multiplexing_number)

      if !tcp_multiplexing_number.nil? && tcp_multiplexing_number > 2147483647
        fail ArgumentError, "invalid value for 'tcp_multiplexing_number', must be smaller than or equal to 2147483647."
      end

      if !tcp_multiplexing_number.nil? && tcp_multiplexing_number < 0
        fail ArgumentError, "invalid value for 'tcp_multiplexing_number', must be greater than or equal to 0."
      end

      @tcp_multiplexing_number = tcp_multiplexing_number
    end

    # Custom attribute writer method with validation
    # @param [Object] min_active_members Value to be assigned
    def min_active_members=(min_active_members)

      if !min_active_members.nil? && min_active_members > 2147483647
        fail ArgumentError, "invalid value for 'min_active_members', must be smaller than or equal to 2147483647."
      end

      if !min_active_members.nil? && min_active_members < 1
        fail ArgumentError, "invalid value for 'min_active_members', must be greater than or equal to 1."
      end

      @min_active_members = min_active_members
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _self == o._self &&
          _links == o._links &&
          _schema == o._schema &&
          _revision == o._revision &&
          _system_owned == o._system_owned &&
          display_name == o.display_name &&
          description == o.description &&
          tags == o.tags &&
          _create_user == o._create_user &&
          _protection == o._protection &&
          _create_time == o._create_time &&
          _last_modified_time == o._last_modified_time &&
          _last_modified_user == o._last_modified_user &&
          id == o.id &&
          resource_type == o.resource_type &&
          member_group == o.member_group &&
          snat_translation == o.snat_translation &&
          algorithm == o.algorithm &&
          members == o.members &&
          passive_monitor_id == o.passive_monitor_id &&
          tcp_multiplexing_number == o.tcp_multiplexing_number &&
          active_monitor_ids == o.active_monitor_ids &&
          tcp_multiplexing_enabled == o.tcp_multiplexing_enabled &&
          min_active_members == o.min_active_members
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _system_owned, display_name, description, tags, _create_user, _protection, _create_time, _last_modified_time, _last_modified_user, id, resource_type, member_group, snat_translation, algorithm, members, passive_monitor_id, tcp_multiplexing_number, active_monitor_ids, tcp_multiplexing_enabled, min_active_members].hash
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
