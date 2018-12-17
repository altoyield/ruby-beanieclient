# Beanie::StockCategoriesApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_stock_category**](StockCategoriesApi.md#add_stock_category) | **POST** /stock_categories | 
[**find_stock_category_by_id**](StockCategoriesApi.md#find_stock_category_by_id) | **GET** /stock_categories/{id} | Find Stock category by ID


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

api_instance = Beanie::StockCategoriesApi.new

stock_categories = Beanie::StockCategoryInput.new # StockCategoryInput | Stock category to add to the system


begin
  result = api_instance.add_stock_category(stock_categories)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockCategoriesApi->add_stock_category: #{e}"
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

api_instance = Beanie::StockCategoriesApi.new

id = 789 # Integer | ID of stock category to fetch


begin
  #Find Stock category by ID
  result = api_instance.find_stock_category_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling StockCategoriesApi->find_stock_category_by_id: #{e}"
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



