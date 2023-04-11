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
  class Video < Media
    attr_accessor :duration_ms, :non_public_metrics, :organic_metrics, :preview_image_url, :promoted_metrics,
                  :public_metrics

    # An array of all available variants of the media.
    attr_accessor :variants

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'duration_ms': :duration_ms,
        'non_public_metrics': :non_public_metrics,
        'organic_metrics': :organic_metrics,
        'preview_image_url': :preview_image_url,
        'promoted_metrics': :promoted_metrics,
        'public_metrics': :public_metrics,
        'variants': :variants
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'duration_ms': :Integer,
        'non_public_metrics': :VideoAllOfNonPublicMetrics,
        'organic_metrics': :VideoAllOfOrganicMetrics,
        'preview_image_url': :String,
        'promoted_metrics': :VideoAllOfPromotedMetrics,
        'public_metrics': :VideoAllOfPublicMetrics,
        'variants': :'Array<Variant>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      %i[
        Media
        VideoAllOf
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      raise ArgumentError, "The input argument (attributes) must be a hash in `Xbird::Video` initialize method" unless attributes.is_a?(Hash)

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Xbird::Video`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      # call parent's initialize
      super(attributes)

      self.duration_ms = attributes[:duration_ms] if attributes.key?(:duration_ms)

      self.non_public_metrics = attributes[:non_public_metrics] if attributes.key?(:non_public_metrics)

      self.organic_metrics = attributes[:organic_metrics] if attributes.key?(:organic_metrics)

      self.preview_image_url = attributes[:preview_image_url] if attributes.key?(:preview_image_url)

      self.promoted_metrics = attributes[:promoted_metrics] if attributes.key?(:promoted_metrics)

      self.public_metrics = attributes[:public_metrics] if attributes.key?(:public_metrics)

      return unless attributes.key?(:variants)
      return unless (value = attributes[:variants]).is_a?(Array)

      self.variants = value
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true && super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        duration_ms == other.duration_ms &&
        non_public_metrics == other.non_public_metrics &&
        organic_metrics == other.organic_metrics &&
        preview_image_url == other.preview_image_url &&
        promoted_metrics == other.promoted_metrics &&
        public_metrics == other.public_metrics &&
        variants == other.variants && super(other)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [duration_ms, non_public_metrics, organic_metrics, preview_image_url, promoted_metrics, public_metrics,
       variants].hash
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

      super(attributes)
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
      hash = super
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
