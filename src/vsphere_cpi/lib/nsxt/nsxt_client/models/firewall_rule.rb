=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.3.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module NSXT

  class FirewallRule
    # Link to this resource
    attr_accessor :_self

    # The server will populate this field when returing the resource. Ignored on PUT and POST.
    attr_accessor :_links

    # Schema for this resource
    attr_accessor :_schema

    # The _revision property describes the current revision of the resource. To prevent clients from overwriting each other's changes, PUT operations must include the current _revision of the resource, which clients should obtain by issuing a GET operation. If the _revision provided in a PUT request is missing or stale, the operation will be rejected.
    attr_accessor :_revision

    # Owner of this resource
    attr_accessor :_owner

    # Defaults to ID if not set
    attr_accessor :display_name

    # Identifier of the resource
    attr_accessor :id

    # The type of this resource.
    attr_accessor :resource_type

    # Description of this resource
    attr_accessor :description

    # Flag to indicate whether rule is default.
    attr_accessor :is_default

    # Rule direction in case of stateless distributed service rules. This will only considered if section level parameter is set to stateless. Default to IN_OUT if not specified.
    attr_accessor :direction

    # User level field which will be printed in CLI and packet logs.
    attr_accessor :rule_tag

    # Type of IP packet that should be matched while enforcing the rule.
    attr_accessor :ip_protocol

    # User notes specific to the rule.
    attr_accessor :notes

    # List of object where rule will be enforced. The section level field overrides this one. Null will be treated as any.
    attr_accessor :applied_tos

    # Flag to enable packet logging. Default is disabled.
    attr_accessor :logged

    # Flag to disable rule. Disabled will only be persisted but never provisioned/realized.
    attr_accessor :disabled

    # List of sources. Null will be treated as any.
    attr_accessor :sources

    # List of the services. Null will be treated as any.
    attr_accessor :services

    # Action enforced on the packets which matches the distributed service rule. Currently DS Layer supports below actions. ALLOW           - Forward any packet when a rule with this action gets a match (Used by Firewall). DROP            - Drop any packet when a rule with this action gets a match. Packets won't go further(Used by Firewall). REJECT          - Terminate TCP connection by sending TCP reset for a packet when a rule with this action gets a match (Used by Firewall). REDIRECT        - Redirect any packet to a partner appliance when a rule with this action gets a match (Used by Service Insertion). DO_NOT_REDIRECT - Do not redirect any packet to a partner appliance when a rule with this action gets a match (Used by Service Insertion).
    attr_accessor :action

    # Negation of the source.
    attr_accessor :sources_excluded

    # Negation of the destination.
    attr_accessor :destinations_excluded

    # List of the destinations. Null will be treated as any.
    attr_accessor :destinations

    # Section Id of the section to which this rule belongs to.
    attr_accessor :section_id

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
        :'_owner' => :'_owner',
        :'display_name' => :'display_name',
        :'id' => :'id',
        :'resource_type' => :'resource_type',
        :'description' => :'description',
        :'is_default' => :'is_default',
        :'direction' => :'direction',
        :'rule_tag' => :'rule_tag',
        :'ip_protocol' => :'ip_protocol',
        :'notes' => :'notes',
        :'applied_tos' => :'applied_tos',
        :'logged' => :'logged',
        :'disabled' => :'disabled',
        :'sources' => :'sources',
        :'services' => :'services',
        :'action' => :'action',
        :'sources_excluded' => :'sources_excluded',
        :'destinations_excluded' => :'destinations_excluded',
        :'destinations' => :'destinations',
        :'section_id' => :'section_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_self' => :'SelfResourceLink',
        :'_links' => :'Array<ResourceLink>',
        :'_schema' => :'String',
        :'_revision' => :'Integer',
        :'_owner' => :'OwnerResourceLink',
        :'display_name' => :'String',
        :'id' => :'String',
        :'resource_type' => :'String',
        :'description' => :'String',
        :'is_default' => :'BOOLEAN',
        :'direction' => :'String',
        :'rule_tag' => :'String',
        :'ip_protocol' => :'String',
        :'notes' => :'String',
        :'applied_tos' => :'Array<ResourceReference>',
        :'logged' => :'BOOLEAN',
        :'disabled' => :'BOOLEAN',
        :'sources' => :'Array<ResourceReference>',
        :'services' => :'Array<FirewallService>',
        :'action' => :'String',
        :'sources_excluded' => :'BOOLEAN',
        :'destinations_excluded' => :'BOOLEAN',
        :'destinations' => :'Array<ResourceReference>',
        :'section_id' => :'String'
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

      if attributes.has_key?(:'_owner')
        self._owner = attributes[:'_owner']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'is_default')
        self.is_default = attributes[:'is_default']
      end

      if attributes.has_key?(:'direction')
        self.direction = attributes[:'direction']
      else
        self.direction = "IN_OUT"
      end

      if attributes.has_key?(:'rule_tag')
        self.rule_tag = attributes[:'rule_tag']
      end

      if attributes.has_key?(:'ip_protocol')
        self.ip_protocol = attributes[:'ip_protocol']
      else
        self.ip_protocol = "IPV4_IPV6"
      end

      if attributes.has_key?(:'notes')
        self.notes = attributes[:'notes']
      end

      if attributes.has_key?(:'applied_tos')
        if (value = attributes[:'applied_tos']).is_a?(Array)
          self.applied_tos = value
        end
      end

      if attributes.has_key?(:'logged')
        self.logged = attributes[:'logged']
      else
        self.logged = false
      end

      if attributes.has_key?(:'disabled')
        self.disabled = attributes[:'disabled']
      else
        self.disabled = false
      end

      if attributes.has_key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      end

      if attributes.has_key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'sources_excluded')
        self.sources_excluded = attributes[:'sources_excluded']
      else
        self.sources_excluded = false
      end

      if attributes.has_key?(:'destinations_excluded')
        self.destinations_excluded = attributes[:'destinations_excluded']
      else
        self.destinations_excluded = false
      end

      if attributes.has_key?(:'destinations')
        if (value = attributes[:'destinations']).is_a?(Array)
          self.destinations = value
        end
      end

      if attributes.has_key?(:'section_id')
        self.section_id = attributes[:'section_id']
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

      if !@rule_tag.nil? && @rule_tag.to_s.length > 32
        invalid_properties.push("invalid value for 'rule_tag', the character length must be smaller than or equal to 32.")
      end

      if !@notes.nil? && @notes.to_s.length > 2048
        invalid_properties.push("invalid value for 'notes', the character length must be smaller than or equal to 2048.")
      end

      if @action.nil?
        invalid_properties.push("invalid value for 'action', action cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@display_name.nil? && @display_name.to_s.length > 255
      return false if !@description.nil? && @description.to_s.length > 1024
      direction_validator = EnumAttributeValidator.new('String', ["IN", "OUT", "IN_OUT"])
      return false unless direction_validator.valid?(@direction)
      return false if !@rule_tag.nil? && @rule_tag.to_s.length > 32
      ip_protocol_validator = EnumAttributeValidator.new('String', ["IPV4", "IPV6", "IPV4_IPV6"])
      return false unless ip_protocol_validator.valid?(@ip_protocol)
      return false if !@notes.nil? && @notes.to_s.length > 2048
      return false if @action.nil?
      action_validator = EnumAttributeValidator.new('String', ["ALLOW", "DROP", "REJECT", "REDIRECT", "DO_NOT_REDIRECT"])
      return false unless action_validator.valid?(@action)
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
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ["IN", "OUT", "IN_OUT"])
      unless validator.valid?(direction)
        fail ArgumentError, "invalid value for 'direction', must be one of #{validator.allowable_values}."
      end
      @direction = direction
    end

    # Custom attribute writer method with validation
    # @param [Object] rule_tag Value to be assigned
    def rule_tag=(rule_tag)

      if !rule_tag.nil? && rule_tag.to_s.length > 32
        fail ArgumentError, "invalid value for 'rule_tag', the character length must be smaller than or equal to 32."
      end

      @rule_tag = rule_tag
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_protocol Object to be assigned
    def ip_protocol=(ip_protocol)
      validator = EnumAttributeValidator.new('String', ["IPV4", "IPV6", "IPV4_IPV6"])
      unless validator.valid?(ip_protocol)
        fail ArgumentError, "invalid value for 'ip_protocol', must be one of #{validator.allowable_values}."
      end
      @ip_protocol = ip_protocol
    end

    # Custom attribute writer method with validation
    # @param [Object] notes Value to be assigned
    def notes=(notes)

      if !notes.nil? && notes.to_s.length > 2048
        fail ArgumentError, "invalid value for 'notes', the character length must be smaller than or equal to 2048."
      end

      @notes = notes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ["ALLOW", "DROP", "REJECT", "REDIRECT", "DO_NOT_REDIRECT"])
      unless validator.valid?(action)
        fail ArgumentError, "invalid value for 'action', must be one of #{validator.allowable_values}."
      end
      @action = action
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
          _owner == o._owner &&
          display_name == o.display_name &&
          id == o.id &&
          resource_type == o.resource_type &&
          description == o.description &&
          is_default == o.is_default &&
          direction == o.direction &&
          rule_tag == o.rule_tag &&
          ip_protocol == o.ip_protocol &&
          notes == o.notes &&
          applied_tos == o.applied_tos &&
          logged == o.logged &&
          disabled == o.disabled &&
          sources == o.sources &&
          services == o.services &&
          action == o.action &&
          sources_excluded == o.sources_excluded &&
          destinations_excluded == o.destinations_excluded &&
          destinations == o.destinations &&
          section_id == o.section_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_self, _links, _schema, _revision, _owner, display_name, id, resource_type, description, is_default, direction, rule_tag, ip_protocol, notes, applied_tos, logged, disabled, sources, services, action, sources_excluded, destinations_excluded, destinations, section_id].hash
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
