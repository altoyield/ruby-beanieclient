# Beanie::SalesOrdersApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_sales_order**](SalesOrdersApi.md#add_sales_order) | **POST** /sales_orders | 
[**find_sales_order_by_id**](SalesOrdersApi.md#find_sales_order_by_id) | **GET** /sales_orders/{id} | Find Sales order by ID


# **add_sales_order**
> SalesOrder add_sales_order(sales_orders)



Creates a new sales order in the system

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

api_instance = Beanie::SalesOrdersApi.new

sales_orders = Beanie::SalesOrderInput.new # SalesOrderInput | Sales order to add to the system


begin
  result = api_instance.add_sales_order(sales_orders)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SalesOrdersApi->add_sales_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sales_orders** | [**SalesOrderInput**](SalesOrderInput.md)| Sales order to add to the system | 

### Return type

[**SalesOrder**](SalesOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_sales_order_by_id**
> SalesOrder find_sales_order_by_id(id)

Find Sales order by ID

Returns a single sales order if the user has access

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

api_instance = Beanie::SalesOrdersApi.new

id = 789 # Integer | ID of sales order to fetch


begin
  #Find Sales order by ID
  result = api_instance.find_sales_order_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SalesOrdersApi->find_sales_order_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of sales order to fetch | 

### Return type

[**SalesOrder**](SalesOrder.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



