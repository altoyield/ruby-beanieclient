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

# Unit tests for Beanie::ProductPriceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProductPriceApi' do
  before do
    # run before each test
    @instance = Beanie::ProductPriceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProductPriceApi' do
    it 'should create an instance of ProductPriceApi' do
      expect(@instance).to be_instance_of(Beanie::ProductPriceApi)
    end
  end

  # unit tests for add_product_price
  # Creates a new product price in the system
  # @param product_prices Product price to add to the system
  # @param [Hash] opts the optional parameters
  # @return [ProductPrice]
  describe 'add_product_price test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_product_price_by_id
  # Find Product price by ID
  # Returns a single product price if the user has access
  # @param id ID of product price to fetch
  # @param [Hash] opts the optional parameters
  # @return [ProductPrice]
  describe 'find_product_price_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_product_prices
  # All product price
  # Returns all product price from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<ProductPrice>]
  describe 'find_product_prices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
