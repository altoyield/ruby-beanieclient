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

# Unit tests for Beanie::BankStatementApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BankStatementApi' do
  before do
    # run before each test
    @instance = Beanie::BankStatementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BankStatementApi' do
    it 'should create an instance of BankStatementApi' do
      expect(@instance).to be_instance_of(Beanie::BankStatementApi)
    end
  end

  # unit tests for add_bank_statement
  # Creates a new bank statement in the system
  # @param bank_statements Bank statement to add to the system
  # @param [Hash] opts the optional parameters
  # @return [BankStatement]
  describe 'add_bank_statement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_bank_statement_by_id
  # Find Bank statement by ID
  # Returns a single bank statement if the user has access
  # @param id ID of bank statement to fetch
  # @param [Hash] opts the optional parameters
  # @return [BankStatement]
  describe 'find_bank_statement_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_bank_statements
  # All bank statement
  # Returns all bank statement from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<BankStatement>]
  describe 'find_bank_statements test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
