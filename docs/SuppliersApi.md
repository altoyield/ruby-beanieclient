# Beanie::SuppliersApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_supplier**](SuppliersApi.md#add_supplier) | **POST** /suppliers | 
[**find_supplier_by_id**](SuppliersApi.md#find_supplier_by_id) | **GET** /suppliers/{id} | Find Supplier by ID


# **add_supplier**
> Supplier add_supplier(suppliers)



Creates a new supplier in the system

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

api_instance = Beanie::SuppliersApi.new

suppliers = Beanie::SupplierInput.new # SupplierInput | Supplier to add to the system


begin
  result = api_instance.add_supplier(suppliers)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SuppliersApi->add_supplier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **suppliers** | [**SupplierInput**](SupplierInput.md)| Supplier to add to the system | 

### Return type

[**Supplier**](Supplier.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_supplier_by_id**
> Supplier find_supplier_by_id(id)

Find Supplier by ID

Returns a single supplier if the user has access

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

api_instance = Beanie::SuppliersApi.new

id = 789 # Integer | ID of supplier to fetch


begin
  #Find Supplier by ID
  result = api_instance.find_supplier_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SuppliersApi->find_supplier_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of supplier to fetch | 

### Return type

[**Supplier**](Supplier.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



