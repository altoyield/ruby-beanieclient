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
require 'date'

# Unit tests for Beanie::PurchaseOrder
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PurchaseOrder' do
  before do
    # run before each test
    @instance = Beanie::PurchaseOrder.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PurchaseOrder' do
    it 'should create an instance of PurchaseOrder' do
      expect(@instance).to be_instance_of(Beanie::PurchaseOrder)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
