# Beanie::StockAdjustmentApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_adjustment**](StockAdjustmentApi.md#add_stock_adjustment) | **POST** /stock_adjustments | 
[**find_stock_adjustment_by_id**](StockAdjustmentApi.md#find_stock_adjustment_by_id) | **GET** /stock_adjustments/{id} | Find Stock adjustment by ID
[**find_stock_adjustments**](StockAdjustmentApi.md#find_stock_adjustments) | **GET** /stock_adjustments | All stock adjustment


# **add_stock_adjustment**
> StockAdjustment add_stock_adjustment(stock_adjustments)



Creates a new stock adjustment in the system

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

api_instance = Beanie::StockAdjustmentApi.new

stock_adjustments = Beanie::StockAdjustmentInput.new # StockAdjustmentInput | Stock adjustment to add to the system


begin
  result = api_instance.add_stock_adjustment(stock_adjustments)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockAdjustmentApi->add_stock_adjustment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_adjustments** | [**StockAdjustmentInput**](StockAdjustmentInput.md)| Stock adjustment to add to the system | 

### Return type

[**StockAdjustment**](StockAdjustment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_adjustment_by_id**
> StockAdjustment find_stock_adjustment_by_id(id)

Find Stock adjustment by ID

Returns a single stock adjustment if the user has access

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

api_instance = Beanie::StockAdjustmentApi.new

id = 789 # Integer | ID of stock adjustment to fetch


begin
  #Find Stock adjustment by ID
  result = api_instance.find_stock_adjustment_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockAdjustmentApi->find_stock_adjustment_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of stock adjustment to fetch | 

### Return type

[**StockAdjustment**](StockAdjustment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_adjustments**
> Array&lt;StockAdjustment&gt; find_stock_adjustments(opts)

All stock adjustment

Returns all stock adjustment from the system that the user has access to

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

api_instance = Beanie::StockAdjustmentApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All stock adjustment
  result = api_instance.find_stock_adjustments(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockAdjustmentApi->find_stock_adjustments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;StockAdjustment&gt;**](StockAdjustment.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



