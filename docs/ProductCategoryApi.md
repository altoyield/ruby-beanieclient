# Beanie::ProductCategoryApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_product_category**](ProductCategoryApi.md#add_product_category) | **POST** /product_categories | 
[**find_product_categories**](ProductCategoryApi.md#find_product_categories) | **GET** /product_categories | All product category
[**find_product_category_by_id**](ProductCategoryApi.md#find_product_category_by_id) | **GET** /product_categories/{id} | Find Product category by ID


# **add_product_category**
> ProductCategory add_product_category(product_categories)



Creates a new product category in the system

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

api_instance = Beanie::ProductCategoryApi.new

product_categories = Beanie::ProductCategoryInput.new # ProductCategoryInput | Product category to add to the system


begin
  result = api_instance.add_product_category(product_categories)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductCategoryApi->add_product_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_categories** | [**ProductCategoryInput**](ProductCategoryInput.md)| Product category to add to the system | 

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_product_categories**
> Array&lt;ProductCategory&gt; find_product_categories(opts)

All product category

Returns all product category from the system that the user has access to

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

api_instance = Beanie::ProductCategoryApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All product category
  result = api_instance.find_product_categories(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductCategoryApi->find_product_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;ProductCategory&gt;**](ProductCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_product_category_by_id**
> ProductCategory find_product_category_by_id(id)

Find Product category by ID

Returns a single product category if the user has access

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

api_instance = Beanie::ProductCategoryApi.new

id = 789 # Integer | ID of product category to fetch


begin
  #Find Product category by ID
  result = api_instance.find_product_category_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductCategoryApi->find_product_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product category to fetch | 

### Return type

[**ProductCategory**](ProductCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



