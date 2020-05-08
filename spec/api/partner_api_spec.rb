=begin
#Beanie ERP API

#An API specification for interacting with the Beanie ERP system

OpenAPI spec version: 0.2
Contact: dev@bean.ie
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Beanie::PartnerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PartnerApi' do
  before do
    # run before each test
    @instance = Beanie::PartnerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PartnerApi' do
    it 'should create an instance of PartnerApi' do
      expect(@instance).to be_instance_of(Beanie::PartnerApi)
    end
  end

  # unit tests for add_partner
  # Creates a new partner in the system
  # @param partners Partner to add to the system
  # @param [Hash] opts the optional parameters
  # @return [Partner]
  describe 'add_partner test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_partner_by_id
  # Find Partner by ID
  # Returns a single partner if the user has access
  # @param id ID of partner to fetch
  # @param [Hash] opts the optional parameters
  # @return [Customer]
  describe 'find_partner_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_partners
  # All partners
  # Returns all partners from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<Partner>]
  describe 'find_partners test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
