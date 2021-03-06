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

# Unit tests for Beanie::AddressBlockApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AddressBlockApi' do
  before do
    # run before each test
    @instance = Beanie::AddressBlockApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddressBlockApi' do
    it 'should create an instance of AddressBlockApi' do
      expect(@instance).to be_instance_of(Beanie::AddressBlockApi)
    end
  end

  # unit tests for add_address_block
  # Creates a new address block in the system
  # @param address_blocks Address block to add to the system
  # @param [Hash] opts the optional parameters
  # @return [AddressBlock]
  describe 'add_address_block test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_address_block_by_id
  # Find Address block by ID
  # Returns a single address block if the user has access
  # @param id ID of address block to fetch
  # @param [Hash] opts the optional parameters
  # @return [AddressBlock]
  describe 'find_address_block_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_address_blocks
  # All address block
  # Returns all address block from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<AddressBlock>]
  describe 'find_address_blocks test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
