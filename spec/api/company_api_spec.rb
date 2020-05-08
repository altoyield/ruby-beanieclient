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

# Unit tests for Beanie::CompanyApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CompanyApi' do
  before do
    # run before each test
    @instance = Beanie::CompanyApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CompanyApi' do
    it 'should create an instance of CompanyApi' do
      expect(@instance).to be_instance_of(Beanie::CompanyApi)
    end
  end

  # unit tests for find_company_by_id
  # Find Company details by ID
  # Returns a single company details if the user has access
  # @param id ID of company details to fetch
  # @param [Hash] opts the optional parameters
  # @return [Company]
  describe 'find_company_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end