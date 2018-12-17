# Beanie::PurchaseOrderApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_purchase_order**](PurchaseOrderApi.md#add_purchase_order) | **POST** /purchase_orders | 
[**find_purchase_order_by_id**](PurchaseOrderApi.md#find_purchase_order_by_id) | **GET** /purchase_orders/{id} | Find Purchase order by ID
[**find_purchase_orders**](PurchaseOrderApi.md#find_purchase_orders) | **GET** /purchase_orders | All purchase order


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

api_instance = Beanie::PurchaseOrderApi.new

purchase_orders = Beanie::PurchaseOrderInput.new # PurchaseOrderInput | Purchase order to add to the system


begin
  result = api_instance.add_purchase_order(purchase_orders)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseOrderApi->add_purchase_order: #{e}"
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

api_instance = Beanie::PurchaseOrderApi.new

id = 789 # Integer | ID of purchase order to fetch


begin
  #Find Purchase order by ID
  result = api_instance.find_purchase_order_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseOrderApi->find_purchase_order_by_id: #{e}"
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



# **find_purchase_orders**
> Array&lt;PurchaseOrder&gt; find_purchase_orders(opts)

All purchase order

Returns all purchase order from the system that the user has access to

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

api_instance = Beanie::PurchaseOrderApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All purchase order
  result = api_instance.find_purchase_orders(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseOrderApi->find_purchase_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;PurchaseOrder&gt;**](PurchaseOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



