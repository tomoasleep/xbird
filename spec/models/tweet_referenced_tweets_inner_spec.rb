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

# Unit tests for Xbird::TweetReferencedTweetsInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Xbird::TweetReferencedTweetsInner do
  let(:instance) { Xbird::TweetReferencedTweetsInner.new }

  describe "test an instance of TweetReferencedTweetsInner" do
    it "should create an instance of TweetReferencedTweetsInner" do
      expect(instance).to be_instance_of(Xbird::TweetReferencedTweetsInner)
    end
  end
  describe 'test attribute "id"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["retweeted", "quoted", "replied_to"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end
end
