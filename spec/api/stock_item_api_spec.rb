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

# Unit tests for Beanie::StockItemApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StockItemApi' do
  before do
    # run before each test
    @instance = Beanie::StockItemApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StockItemApi' do
    it 'should create an instance of StockItemApi' do
      expect(@instance).to be_instance_of(Beanie::StockItemApi)
    end
  end

  # unit tests for add_stock_item
  # Creates a new stock item in the system
  # @param stock_items Stock item to add to the system
  # @param [Hash] opts the optional parameters
  # @return [StockItem]
  describe 'add_stock_item test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_stock_item_by_id
  # Find Stock item by ID
  # Returns a single stock item if the user has access
  # @param id ID of stock item to fetch
  # @param [Hash] opts the optional parameters
  # @return [StockItem]
  describe 'find_stock_item_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_stock_items
  # All stock item
  # Returns all stock item from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<StockItem>]
  describe 'find_stock_items test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
