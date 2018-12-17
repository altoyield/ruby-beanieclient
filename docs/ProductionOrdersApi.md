# Beanie::ProductionOrdersApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_production_order**](ProductionOrdersApi.md#add_production_order) | **POST** /production_orders | 
[**find_production_order_by_id**](ProductionOrdersApi.md#find_production_order_by_id) | **GET** /production_orders/{id} | Find Production order by ID


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

api_instance = Beanie::ProductionOrdersApi.new

production_orders = Beanie::ProductionOrderInput.new # ProductionOrderInput | Production order to add to the system


begin
  result = api_instance.add_production_order(production_orders)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductionOrdersApi->add_production_order: #{e}"
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

api_instance = Beanie::ProductionOrdersApi.new

id = 789 # Integer | ID of production order to fetch


begin
  #Find Production order by ID
  result = api_instance.find_production_order_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductionOrdersApi->find_production_order_by_id: #{e}"
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



