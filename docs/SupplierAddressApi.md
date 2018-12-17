# Beanie::SupplierAddressApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_supplier_address**](SupplierAddressApi.md#add_supplier_address) | **POST** /supplier_addresses | 
[**find_supplier_address_by_id**](SupplierAddressApi.md#find_supplier_address_by_id) | **GET** /supplier_addresses/{id} | Find Supplier address by ID
[**find_supplier_addresses**](SupplierAddressApi.md#find_supplier_addresses) | **GET** /supplier_addresses | All supplier address


# **add_supplier_address**
> SupplierAddress add_supplier_address(supplier_addresses)



Creates a new supplier address in the system

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

api_instance = Beanie::SupplierAddressApi.new

supplier_addresses = Beanie::SupplierAddressInput.new # SupplierAddressInput | Supplier address to add to the system


begin
  result = api_instance.add_supplier_address(supplier_addresses)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SupplierAddressApi->add_supplier_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supplier_addresses** | [**SupplierAddressInput**](SupplierAddressInput.md)| Supplier address to add to the system | 

### Return type

[**SupplierAddress**](SupplierAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_supplier_address_by_id**
> SupplierAddress find_supplier_address_by_id(id)

Find Supplier address by ID

Returns a single supplier address if the user has access

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

api_instance = Beanie::SupplierAddressApi.new

id = 789 # Integer | ID of supplier address to fetch


begin
  #Find Supplier address by ID
  result = api_instance.find_supplier_address_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SupplierAddressApi->find_supplier_address_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of supplier address to fetch | 

### Return type

[**SupplierAddress**](SupplierAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_supplier_addresses**
> Array&lt;SupplierAddress&gt; find_supplier_addresses(opts)

All supplier address

Returns all supplier address from the system that the user has access to

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

api_instance = Beanie::SupplierAddressApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All supplier address
  result = api_instance.find_supplier_addresses(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SupplierAddressApi->find_supplier_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;SupplierAddress&gt;**](SupplierAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



