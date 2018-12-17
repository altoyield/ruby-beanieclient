# Beanie::ProductionOrderApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_production_order**](ProductionOrderApi.md#add_production_order) | **POST** /production_orders | 
[**find_production_order_by_id**](ProductionOrderApi.md#find_production_order_by_id) | **GET** /production_orders/{id} | Find Production order by ID
[**find_production_orders**](ProductionOrderApi.md#find_production_orders) | **GET** /production_orders | All production order


# **add_production_order**
> ProductionOrder add_production_order(production_orders)



Creates a new production order in the system

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

api_instance = Beanie::ProductionOrderApi.new

production_orders = Beanie::ProductionOrderInput.new # ProductionOrderInput | Production order to add to the system


begin
  result = api_instance.add_production_order(production_orders)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductionOrderApi->add_production_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **production_orders** | [**ProductionOrderInput**](ProductionOrderInput.md)| Production order to add to the system | 

### Return type

[**ProductionOrder**](ProductionOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_production_order_by_id**
> ProductionOrder find_production_order_by_id(id)

Find Production order by ID

Returns a single production order if the user has access

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

api_instance = Beanie::ProductionOrderApi.new

id = 789 # Integer | ID of production order to fetch


begin
  #Find Production order by ID
  result = api_instance.find_production_order_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductionOrderApi->find_production_order_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of production order to fetch | 

### Return type

[**ProductionOrder**](ProductionOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_production_orders**
> Array&lt;ProductionOrder&gt; find_production_orders(opts)

All production order

Returns all production order from the system that the user has access to

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

api_instance = Beanie::ProductionOrderApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All production order
  result = api_instance.find_production_orders(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductionOrderApi->find_production_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;ProductionOrder&gt;**](ProductionOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



