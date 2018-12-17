# Beanie::StockLocationsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_location**](StockLocationsApi.md#add_stock_location) | **POST** /stock_locations | 
[**find_stock_location_by_id**](StockLocationsApi.md#find_stock_location_by_id) | **GET** /stock_locations/{id} | Find Stock location by ID


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

api_instance = Beanie::StockLocationsApi.new

stock_locations = Beanie::StockLocationInput.new # StockLocationInput | Stock location to add to the system


begin
  result = api_instance.add_stock_location(stock_locations)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockLocationsApi->add_stock_location: #{e}"
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

api_instance = Beanie::StockLocationsApi.new

id = 789 # Integer | ID of stock location to fetch


begin
  #Find Stock location by ID
  result = api_instance.find_stock_location_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockLocationsApi->find_stock_location_by_id: #{e}"
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



