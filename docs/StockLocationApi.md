# Beanie::StockLocationApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_location**](StockLocationApi.md#add_stock_location) | **POST** /stock_locations | 
[**find_stock_location_by_id**](StockLocationApi.md#find_stock_location_by_id) | **GET** /stock_locations/{id} | Find Stock location by ID
[**find_stock_locations**](StockLocationApi.md#find_stock_locations) | **GET** /stock_locations | All stock location


# **add_stock_location**
> StockLocation add_stock_location(stock_locations)



Creates a new stock location in the system

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

api_instance = Beanie::StockLocationApi.new

stock_locations = Beanie::StockLocationInput.new # StockLocationInput | Stock location to add to the system


begin
  result = api_instance.add_stock_location(stock_locations)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockLocationApi->add_stock_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_locations** | [**StockLocationInput**](StockLocationInput.md)| Stock location to add to the system | 

### Return type

[**StockLocation**](StockLocation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_location_by_id**
> StockLocation find_stock_location_by_id(id)

Find Stock location by ID

Returns a single stock location if the user has access

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

api_instance = Beanie::StockLocationApi.new

id = 789 # Integer | ID of stock location to fetch


begin
  #Find Stock location by ID
  result = api_instance.find_stock_location_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockLocationApi->find_stock_location_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of stock location to fetch | 

### Return type

[**StockLocation**](StockLocation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_locations**
> Array&lt;StockLocation&gt; find_stock_locations(opts)

All stock location

Returns all stock location from the system that the user has access to

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

api_instance = Beanie::StockLocationApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All stock location
  result = api_instance.find_stock_locations(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockLocationApi->find_stock_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;StockLocation&gt;**](StockLocation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



