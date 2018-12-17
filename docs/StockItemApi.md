# Beanie::StockItemApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_item**](StockItemApi.md#add_stock_item) | **POST** /stock_items | 
[**find_stock_item_by_id**](StockItemApi.md#find_stock_item_by_id) | **GET** /stock_items/{id} | Find Stock item by ID
[**find_stock_items**](StockItemApi.md#find_stock_items) | **GET** /stock_items | All stock item


# **add_stock_item**
> StockItem add_stock_item(stock_items)



Creates a new stock item in the system

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

api_instance = Beanie::StockItemApi.new

stock_items = Beanie::StockItemInput.new # StockItemInput | Stock item to add to the system


begin
  result = api_instance.add_stock_item(stock_items)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockItemApi->add_stock_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_items** | [**StockItemInput**](StockItemInput.md)| Stock item to add to the system | 

### Return type

[**StockItem**](StockItem.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_item_by_id**
> StockItem find_stock_item_by_id(id)

Find Stock item by ID

Returns a single stock item if the user has access

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

api_instance = Beanie::StockItemApi.new

id = 789 # Integer | ID of stock item to fetch


begin
  #Find Stock item by ID
  result = api_instance.find_stock_item_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockItemApi->find_stock_item_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of stock item to fetch | 

### Return type

[**StockItem**](StockItem.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_items**
> Array&lt;StockItem&gt; find_stock_items(opts)

All stock item

Returns all stock item from the system that the user has access to

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

api_instance = Beanie::StockItemApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All stock item
  result = api_instance.find_stock_items(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockItemApi->find_stock_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;StockItem&gt;**](StockItem.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



