# frozen_string_literal: true

# #Twitter API v2
#
# Twitter API v2 available endpoints
#
# The version of the OpenAPI document: 2.62
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 6.5.0
#

require "date"
require "time"

module Xbird
  class FullTextEntities
    attr_accessor :annotations, :cashtags, :hashtags, :mentions, :urls

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'annotations': :annotations,
        'cashtags': :cashtags,
        'hashtags': :hashtags,
        'mentions': :mentions,
        'urls': :urls
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'annotations': :'Array<FullTextEntitiesAnnotationsInner>',
        'cashtags': :'Array<CashtagEntity>',
        'hashtags': :'Array<HashtagEntity>',
        'mentions': :'Array<MentionEntity>',
        'urls': :'Array<UrlEntity>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              "The input argument (attributes) must be a hash in `Xbird::FullTextEntities` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Xbird::FullTextEntities`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      if attributes.key?(:annotations) && (value = attributes[:annotations]).is_a?(Array)
        self.annotations = value
      end

      if attributes.key?(:cashtags) && (value = attributes[:cashtags]).is_a?(Array)
        self.cashtags = value
      end

      if attributes.key?(:hashtags) && (value = attributes[:hashtags]).is_a?(Array)
        self.hashtags = value
      end

      if attributes.key?(:mentions) && (value = attributes[:mentions]).is_a?(Array)
        self.mentions = value
      end

      return unless attributes.key?(:urls)
      return unless (value = attributes[:urls]).is_a?(Array)

      self.urls = value
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "annotations", number of items must be greater than or equal to 1.') if !@annotations.nil? && @annotations.empty?

      invalid_properties.push('invalid value for "cashtags", number of items must be greater than or equal to 1.') if !@cashtags.nil? && @cashtags.empty?

      invalid_properties.push('invalid value for "hashtags", number of items must be greater than or equal to 1.') if !@hashtags.nil? && @hashtags.empty?

      invalid_properties.push('invalid value for "mentions", number of items must be greater than or equal to 1.') if !@mentions.nil? && @mentions.empty?

      invalid_properties.push('invalid value for "urls", number of items must be greater than or equal to 1.') if !@urls.nil? && @urls.empty?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@annotations.nil? && @annotations.empty?
      return false if !@cashtags.nil? && @cashtags.empty?
      return false if !@hashtags.nil? && @hashtags.empty?
      return false if !@mentions.nil? && @mentions.empty?
      return false if !@urls.nil? && @urls.empty?

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] annotations Value to be assigned
    def annotations=(annotations)
      raise ArgumentError, 'invalid value for "annotations", number of items must be greater than or equal to 1.' if !annotations.nil? && annotations.empty?

      @annotations = annotations
    end

    # Custom attribute writer method with validation
    # @param [Object] cashtags Value to be assigned
    def cashtags=(cashtags)
      raise ArgumentError, 'invalid value for "cashtags", number of items must be greater than or equal to 1.' if !cashtags.nil? && cashtags.empty?

      @cashtags = cashtags
    end

    # Custom attribute writer method with validation
    # @param [Object] hashtags Value to be assigned
    def hashtags=(hashtags)
      raise ArgumentError, 'invalid value for "hashtags", number of items must be greater than or equal to 1.' if !hashtags.nil? && hashtags.empty?

      @hashtags = hashtags
    end

    # Custom attribute writer method with validation
    # @param [Object] mentions Value to be assigned
    def mentions=(mentions)
      raise ArgumentError, 'invalid value for "mentions", number of items must be greater than or equal to 1.' if !mentions.nil? && mentions.empty?

      @mentions = mentions
    end

    # Custom attribute writer method with validation
    # @param [Object] urls Value to be assigned
    def urls=(urls)
      raise ArgumentError, 'invalid value for "urls", number of items must be greater than or equal to 1.' if !urls.nil? && urls.empty?

      @urls = urls
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        annotations == other.annotations &&
        cashtags == other.cashtags &&
        hashtags == other.hashtags &&
        mentions == other.mentions &&
        urls == other.urls
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [annotations, cashtags, hashtags, mentions, urls].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                              _deserialize(::Regexp.last_match(1), v)
                            end)
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = Xbird.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
