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
  # Represent the portion of text recognized as a URL.
  class UrlFields
    # Description of the URL landing page.
    attr_accessor :description

    # The URL as displayed in the Twitter client.
    attr_accessor :display_url

    # A validly formatted URL.
    attr_accessor :expanded_url

    attr_accessor :images

    # The Media Key identifier for this attachment.
    attr_accessor :media_key

    # HTTP Status Code.
    attr_accessor :status

    # Title of the page the URL points to.
    attr_accessor :title

    # Fully resolved url.
    attr_accessor :unwound_url

    # A validly formatted URL.
    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'description': :description,
        'display_url': :display_url,
        'expanded_url': :expanded_url,
        'images': :images,
        'media_key': :media_key,
        'status': :status,
        'title': :title,
        'unwound_url': :unwound_url,
        'url': :url
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'description': :String,
        'display_url': :String,
        'expanded_url': :String,
        'images': :'Array<UrlImage>',
        'media_key': :String,
        'status': :Integer,
        'title': :String,
        'unwound_url': :String,
        'url': :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      raise ArgumentError, "The input argument (attributes) must be a hash in `Xbird::UrlFields` initialize method" unless attributes.is_a?(Hash)

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Xbird::UrlFields`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.description = attributes[:description] if attributes.key?(:description)

      self.display_url = attributes[:display_url] if attributes.key?(:display_url)

      self.expanded_url = attributes[:expanded_url] if attributes.key?(:expanded_url)

      if attributes.key?(:images) && (value = attributes[:images]).is_a?(Array)
        self.images = value
      end

      self.media_key = attributes[:media_key] if attributes.key?(:media_key)

      self.status = attributes[:status] if attributes.key?(:status)

      self.title = attributes[:title] if attributes.key?(:title)

      self.unwound_url = attributes[:unwound_url] if attributes.key?(:unwound_url)

      return unless attributes.key?(:url)

      self.url = attributes[:url]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "images", number of items must be greater than or equal to 1.') if !@images.nil? && @images.empty?

      pattern = Regexp.new(/^([0-9]+)_([0-9]+)$/)
      invalid_properties.push("invalid value for \"media_key\", must conform to the pattern #{pattern}.") if !@media_key.nil? && @media_key !~ pattern

      invalid_properties.push('invalid value for "status", must be smaller than or equal to 599.') if !@status.nil? && @status > 599

      invalid_properties.push('invalid value for "status", must be greater than or equal to 100.') if !@status.nil? && @status < 100

      invalid_properties.push('invalid value for "url", url cannot be nil.') if @url.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@images.nil? && @images.empty?
      return false if !@media_key.nil? && @media_key !~ Regexp.new(/^([0-9]+)_([0-9]+)$/)
      return false if !@status.nil? && @status > 599
      return false if !@status.nil? && @status < 100
      return false if @url.nil?

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] images Value to be assigned
    def images=(images)
      raise ArgumentError, 'invalid value for "images", number of items must be greater than or equal to 1.' if !images.nil? && images.empty?

      @images = images
    end

    # Custom attribute writer method with validation
    # @param [Object] media_key Value to be assigned
    def media_key=(media_key)
      pattern = Regexp.new(/^([0-9]+)_([0-9]+)$/)
      raise ArgumentError, "invalid value for \"media_key\", must conform to the pattern #{pattern}." if !media_key.nil? && media_key !~ pattern

      @media_key = media_key
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      raise ArgumentError, 'invalid value for "status", must be smaller than or equal to 599.' if !status.nil? && status > 599

      raise ArgumentError, 'invalid value for "status", must be greater than or equal to 100.' if !status.nil? && status < 100

      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        description == other.description &&
        display_url == other.display_url &&
        expanded_url == other.expanded_url &&
        images == other.images &&
        media_key == other.media_key &&
        status == other.status &&
        title == other.title &&
        unwound_url == other.unwound_url &&
        url == other.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [description, display_url, expanded_url, images, media_key, status, title, unwound_url, url].hash
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
