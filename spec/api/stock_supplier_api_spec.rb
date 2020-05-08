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

# Unit tests for Beanie::StockSupplierApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StockSupplierApi' do
  before do
    # run before each test
    @instance = Beanie::StockSupplierApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StockSupplierApi' do
    it 'should create an instance of StockSupplierApi' do
      expect(@instance).to be_instance_of(Beanie::StockSupplierApi)
    end
  end

  # unit tests for add_stock_supplier
  # Creates a new stock supplier in the system
  # @param stock_suppliers Stock supplier to add to the system
  # @param [Hash] opts the optional parameters
  # @return [StockSupplier]
  describe 'add_stock_supplier test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_stock_supplier_by_id
  # Find Stock supplier by ID
  # Returns a single stock supplier if the user has access
  # @param id ID of stock supplier to fetch
  # @param [Hash] opts the optional parameters
  # @return [StockSupplier]
  describe 'find_stock_supplier_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_stock_suppliers
  # All stock supplier
  # Returns all stock supplier from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<StockSupplier>]
  describe 'find_stock_suppliers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end