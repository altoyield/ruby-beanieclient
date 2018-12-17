# Beanie::StockSuppliersApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_supplier**](StockSuppliersApi.md#add_stock_supplier) | **POST** /stock_suppliers | 
[**find_stock_supplier_by_id**](StockSuppliersApi.md#find_stock_supplier_by_id) | **GET** /stock_suppliers/{id} | Find Stock supplier by ID


# **add_stock_supplier**
> StockSupplier add_stock_supplier(stock_suppliers)



Creates a new stock supplier in the system

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

api_instance = Beanie::StockSuppliersApi.new

stock_suppliers = Beanie::StockSupplierInput.new # StockSupplierInput | Stock supplier to add to the system


begin
  result = api_instance.add_stock_supplier(stock_suppliers)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockSuppliersApi->add_stock_supplier: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_suppliers** | [**StockSupplierInput**](StockSupplierInput.md)| Stock supplier to add to the system | 

### Return type

[**StockSupplier**](StockSupplier.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_supplier_by_id**
> StockSupplier find_stock_supplier_by_id(id)

Find Stock supplier by ID

Returns a single stock supplier if the user has access

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

api_instance = Beanie::StockSuppliersApi.new

id = 789 # Integer | ID of stock supplier to fetch


begin
  #Find Stock supplier by ID
  result = api_instance.find_stock_supplier_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockSuppliersApi->find_stock_supplier_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of stock supplier to fetch | 

### Return type

[**StockSupplier**](StockSupplier.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



