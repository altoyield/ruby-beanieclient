# Beanie::AddressBlocksApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_address_block**](AddressBlocksApi.md#add_address_block) | **POST** /address_blocks | 
[**find_address_block_by_id**](AddressBlocksApi.md#find_address_block_by_id) | **GET** /address_blocks/{id} | Find Address block by ID


# **add_address_block**
> AddressBlock add_address_block(address_blocks)



Creates a new address block in the system

### Example
```ruby
# load the gem
require 'beanie'
# setup authorization
Beanie.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = Beanie::AddressBlocksApi.new

address_blocks = Beanie::AddressBlockInput.new # AddressBlockInput | Address block to add to the system


begin
  result = api_instance.add_address_block(address_blocks)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling AddressBlocksApi->add_address_block: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **address_blocks** | [**AddressBlockInput**](AddressBlockInput.md)| Address block to add to the system | 

### Return type

[**AddressBlock**](AddressBlock.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_address_block_by_id**
> AddressBlock find_address_block_by_id(id)

Find Address block by ID

Returns a single address block if the user has access

### Example
```ruby
# load the gem
require 'beanie'
# setup authorization
Beanie.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['ApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['ApiKey'] = 'Bearer'
end

api_instance = Beanie::AddressBlocksApi.new

id = 789 # Integer | ID of address block to fetch


begin
  #Find Address block by ID
  result = api_instance.find_address_block_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling AddressBlocksApi->find_address_block_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of address block to fetch | 

### Return type

[**AddressBlock**](AddressBlock.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



