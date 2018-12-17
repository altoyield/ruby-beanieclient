# Beanie::StockCategoryApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_category**](StockCategoryApi.md#add_stock_category) | **POST** /stock_categories | 
[**find_stock_categories**](StockCategoryApi.md#find_stock_categories) | **GET** /stock_categories | All stock category
[**find_stock_category_by_id**](StockCategoryApi.md#find_stock_category_by_id) | **GET** /stock_categories/{id} | Find Stock category by ID


# **add_stock_category**
> StockCategory add_stock_category(stock_categories)



Creates a new stock category in the system

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

api_instance = Beanie::StockCategoryApi.new

stock_categories = Beanie::StockCategoryInput.new # StockCategoryInput | Stock category to add to the system


begin
  result = api_instance.add_stock_category(stock_categories)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockCategoryApi->add_stock_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stock_categories** | [**StockCategoryInput**](StockCategoryInput.md)| Stock category to add to the system | 

### Return type

[**StockCategory**](StockCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_categories**
> Array&lt;StockCategory&gt; find_stock_categories(opts)

All stock category

Returns all stock category from the system that the user has access to

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

api_instance = Beanie::StockCategoryApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All stock category
  result = api_instance.find_stock_categories(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockCategoryApi->find_stock_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;StockCategory&gt;**](StockCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_stock_category_by_id**
> StockCategory find_stock_category_by_id(id)

Find Stock category by ID

Returns a single stock category if the user has access

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

api_instance = Beanie::StockCategoryApi.new

id = 789 # Integer | ID of stock category to fetch


begin
  #Find Stock category by ID
  result = api_instance.find_stock_category_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockCategoryApi->find_stock_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of stock category to fetch | 

### Return type

[**StockCategory**](StockCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



