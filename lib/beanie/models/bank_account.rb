=begin
#Beanie ERP API

#An API specification for interacting with the Beanie ERP system

OpenAPI spec version: 0.8
Contact: dev@bean.ie
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module Beanie
  class BankAccount
    attr_accessor :name

    attr_accessor :bank_name

    attr_accessor :currency_code

    attr_accessor :swift

    attr_accessor :iban

    attr_accessor :address1

    attr_accessor :address2

    attr_accessor :address3

    attr_accessor :city

    attr_accessor :state_county

    attr_accessor :zip_postcode

    attr_accessor :country_name

    attr_accessor :contact_name

    attr_accessor :phone

    attr_accessor :email

    attr_accessor :website

    attr_accessor :id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'bank_name' => :'bank_name',
        :'currency_code' => :'currency_code',
        :'swift' => :'swift',
        :'iban' => :'iban',
        :'address1' => :'address1',
        :'address2' => :'address2',
        :'address3' => :'address3',
        :'city' => :'city',
        :'state_county' => :'state_county',
        :'zip_postcode' => :'zip_postcode',
        :'country_name' => :'country_name',
        :'contact_name' => :'contact_name',
        :'phone' => :'phone',
        :'email' => :'email',
        :'website' => :'website',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'bank_name' => :'String',
        :'currency_code' => :'String',
        :'swift' => :'String',
        :'iban' => :'String',
        :'address1' => :'String',
        :'address2' => :'String',
        :'address3' => :'String',
        :'city' => :'String',
        :'state_county' => :'String',
        :'zip_postcode' => :'String',
        :'country_name' => :'String',
        :'contact_name' => :'String',
        :'phone' => :'String',
        :'email' => :'String',
        :'website' => :'String',
        :'id' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.has_key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.has_key?(:'swift')
        self.swift = attributes[:'swift']
      end

      if attributes.has_key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.has_key?(:'address1')
        self.address1 = attributes[:'address1']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'address3')
        self.address3 = attributes[:'address3']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state_county')
        self.state_county = attributes[:'state_county']
      end

      if attributes.has_key?(:'zip_postcode')
        self.zip_postcode = attributes[:'zip_postcode']
      end

      if attributes.has_key?(:'country_name')
        self.country_name = attributes[:'country_name']
      end

      if attributes.has_key?(:'contact_name')
        self.contact_name = attributes[:'contact_name']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @bank_name.nil?
        invalid_properties.push('invalid value for "bank_name", bank_name cannot be nil.')
      end

      if @currency_code.nil?
        invalid_properties.push('invalid value for "currency_code", currency_code cannot be nil.')
      end

      if @swift.nil?
        invalid_properties.push('invalid value for "swift", swift cannot be nil.')
      end

      if @iban.nil?
        invalid_properties.push('invalid value for "iban", iban cannot be nil.')
      end

      if @country_name.nil?
        invalid_properties.push('invalid value for "country_name", country_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @bank_name.nil?
      return false if @currency_code.nil?
      return false if @swift.nil?
      return false if @iban.nil?
      return false if @country_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          bank_name == o.bank_name &&
          currency_code == o.currency_code &&
          swift == o.swift &&
          iban == o.iban &&
          address1 == o.address1 &&
          address2 == o.address2 &&
          address3 == o.address3 &&
          city == o.city &&
          state_county == o.state_county &&
          zip_postcode == o.zip_postcode &&
          country_name == o.country_name &&
          contact_name == o.contact_name &&
          phone == o.phone &&
          email == o.email &&
          website == o.website &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, bank_name, currency_code, swift, iban, address1, address2, address3, city, state_county, zip_postcode, country_name, contact_name, phone, email, website, id].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
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
        temp_model = Beanie.const_get(type).new
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
        value.compact.map { |v| _to_hash(v) }
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
