# Beanie::PurchaseOrdersApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_purchase_order**](PurchaseOrdersApi.md#add_purchase_order) | **POST** /purchase_orders | 
[**find_purchase_order_by_id**](PurchaseOrdersApi.md#find_purchase_order_by_id) | **GET** /purchase_orders/{id} | Find Purchase order by ID


# **add_purchase_order**
> PurchaseOrder add_purchase_order(purchase_orders)



Creates a new purchase order in the system

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

api_instance = Beanie::PurchaseOrdersApi.new

purchase_orders = Beanie::PurchaseOrderInput.new # PurchaseOrderInput | Purchase order to add to the system


begin
  result = api_instance.add_purchase_order(purchase_orders)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->add_purchase_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_orders** | [**PurchaseOrderInput**](PurchaseOrderInput.md)| Purchase order to add to the system | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_purchase_order_by_id**
> PurchaseOrder find_purchase_order_by_id(id)

Find Purchase order by ID

Returns a single purchase order if the user has access

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

api_instance = Beanie::PurchaseOrdersApi.new

id = 789 # Integer | ID of purchase order to fetch


begin
  #Find Purchase order by ID
  result = api_instance.find_purchase_order_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseOrdersApi->find_purchase_order_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of purchase order to fetch | 

### Return type

[**PurchaseOrder**](PurchaseOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



