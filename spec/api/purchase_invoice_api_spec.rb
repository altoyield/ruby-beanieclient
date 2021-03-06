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

# Unit tests for Beanie::PurchaseInvoiceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PurchaseInvoiceApi' do
  before do
    # run before each test
    @instance = Beanie::PurchaseInvoiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PurchaseInvoiceApi' do
    it 'should create an instance of PurchaseInvoiceApi' do
      expect(@instance).to be_instance_of(Beanie::PurchaseInvoiceApi)
    end
  end

  # unit tests for add_purchase_invoice
  # Creates a new purchase invoice in the system
  # @param purchase_invoices Purchase invoice to add to the system
  # @param [Hash] opts the optional parameters
  # @return [PurchaseInvoice]
  describe 'add_purchase_invoice test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_purchase_invoice_by_id
  # Find Purchase invoice by ID
  # Returns a single purchase invoice if the user has access
  # @param id ID of purchase invoice to fetch
  # @param [Hash] opts the optional parameters
  # @return [PurchaseInvoice]
  describe 'find_purchase_invoice_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_purchase_invoices
  # All purchase invoice
  # Returns all purchase invoice from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<PurchaseInvoice>]
  describe 'find_purchase_invoices test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
