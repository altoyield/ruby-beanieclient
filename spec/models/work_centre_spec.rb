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

# Unit tests for Beanie::WorkCentre
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WorkCentre' do
  before do
    # run before each test
    @instance = Beanie::WorkCentre.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkCentre' do
    it 'should create an instance of WorkCentre' do
      expect(@instance).to be_instance_of(Beanie::WorkCentre)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
