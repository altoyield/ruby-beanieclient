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

# Unit tests for Beanie::ReceivedGoodsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReceivedGoodsApi' do
  before do
    # run before each test
    @instance = Beanie::ReceivedGoodsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReceivedGoodsApi' do
    it 'should create an instance of ReceivedGoodsApi' do
      expect(@instance).to be_instance_of(Beanie::ReceivedGoodsApi)
    end
  end

  # unit tests for add_received_goods
  # Creates a new received goods in the system
  # @param received_goods Received goods to add to the system
  # @param [Hash] opts the optional parameters
  # @return [ReceivedGoods]
  describe 'add_received_goods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_received_goods
  # All received goods
  # Returns all received goods from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<ReceivedGoods>]
  describe 'find_received_goods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_received_goods_by_id
  # Find Received goods by ID
  # Returns a single received goods if the user has access
  # @param id ID of received goods to fetch
  # @param [Hash] opts the optional parameters
  # @return [ReceivedGoods]
  describe 'find_received_goods_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
