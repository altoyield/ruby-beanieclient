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

# Unit tests for Beanie::ImageApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImageApi' do
  before do
    # run before each test
    @instance = Beanie::ImageApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImageApi' do
    it 'should create an instance of ImageApi' do
      expect(@instance).to be_instance_of(Beanie::ImageApi)
    end
  end

  # unit tests for add_image
  # Creates a new image in the system
  # @param images Image to add to the system
  # @param [Hash] opts the optional parameters
  # @return [Image]
  describe 'add_image test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_image_by_id
  # Find Image by ID
  # Returns a single image if the user has access
  # @param id ID of image to fetch
  # @param [Hash] opts the optional parameters
  # @return [Image]
  describe 'find_image_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for find_images
  # All image
  # Returns all image from the system that the user has access to
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :tags tags to filter by
  # @option opts [Integer] :limit Maximum number of results to return
  # @return [Array<Image>]
  describe 'find_images test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
