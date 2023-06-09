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

require "spec_helper"
require "json"
require "date"

# Unit tests for Xbird::DisallowedResourceProblemAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Xbird::DisallowedResourceProblemAllOf do
  let(:instance) { Xbird::DisallowedResourceProblemAllOf.new }

  describe "test an instance of DisallowedResourceProblemAllOf" do
    it "should create an instance of DisallowedResourceProblemAllOf" do
      expect(instance).to be_instance_of(Xbird::DisallowedResourceProblemAllOf)
    end
  end
  describe 'test attribute "resource_id"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resource_type"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["user", "tweet", "media", "list", "space"])
      # validator.allowable_values.each do |value|
      #   expect { instance.resource_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "section"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["data", "includes"])
      # validator.allowable_values.each do |value|
      #   expect { instance.section = value }.not_to raise_error
      # end
    end
  end
end
