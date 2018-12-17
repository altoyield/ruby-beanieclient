# Beanie::StockImageApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_image**](StockImageApi.md#add_stock_image) | **POST** /stock_images | 
[**find_stock_image_by_id**](StockImageApi.md#find_stock_image_by_id) | **GET** /stock_images/{id} | Find Stock image by ID
[**find_stock_images**](StockImageApi.md#find_stock_images) | **GET** /stock_images | All stock image


# **add_stock_image**
> StockImage add_stock_image(stock_images)



Creates a new stock image in the system

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

api_instance = Beanie::StockImageApi.new

stock_images = Beanie::StockImageInput.new # StockImageInput | Stock image to add to the system


begin
  result = api_instance.add_stock_image(stock_images)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockImageApi->add_stock_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_images** | [**StockImageInput**](StockImageInput.md)| Stock image to add to the system | 

### Return type

[**StockImage**](StockImage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_image_by_id**
> StockImage find_stock_image_by_id(id)

Find Stock image by ID

Returns a single stock image if the user has access

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

api_instance = Beanie::StockImageApi.new

id = 789 # Integer | ID of stock image to fetch


begin
  #Find Stock image by ID
  result = api_instance.find_stock_image_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockImageApi->find_stock_image_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of stock image to fetch | 

### Return type

[**StockImage**](StockImage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_images**
> Array&lt;StockImage&gt; find_stock_images(opts)

All stock image

Returns all stock image from the system that the user has access to

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

api_instance = Beanie::StockImageApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All stock image
  result = api_instance.find_stock_images(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockImageApi->find_stock_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;StockImage&gt;**](StockImage.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



