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
  class ComplianceJobStatus
    CREATED = "created"
    IN_PROGRESS = "in_progress"
    FAILED = "failed"
    COMPLETE = "complete"
    EXPIRED = "expired"

    def self.all_vars
      @all_vars ||= [CREATED, IN_PROGRESS, FAILED, COMPLETE, EXPIRED].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ComplianceJobStatus.all_vars.include?(value)

      raise "Invalid ENUM value #{value} for class #ComplianceJobStatus"
    end
  end
end