# Beanie::SupplierAddressesApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_supplier_address**](SupplierAddressesApi.md#add_supplier_address) | **POST** /supplier_addresses | 
[**find_supplier_address_by_id**](SupplierAddressesApi.md#find_supplier_address_by_id) | **GET** /supplier_addresses/{id} | Find Supplier address by ID


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

api_instance = Beanie::SupplierAddressesApi.new

supplier_addresses = Beanie::SupplierAddressInput.new # SupplierAddressInput | Supplier address to add to the system


begin
  result = api_instance.add_supplier_address(supplier_addresses)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SupplierAddressesApi->add_supplier_address: #{e}"
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

api_instance = Beanie::SupplierAddressesApi.new

id = 789 # Integer | ID of supplier address to fetch


begin
  #Find Supplier address by ID
  result = api_instance.find_supplier_address_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SupplierAddressesApi->find_supplier_address_by_id: #{e}"
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



