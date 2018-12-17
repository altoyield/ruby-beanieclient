# Beanie::ProductsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_product**](ProductsApi.md#add_product) | **POST** /products | 
[**find_product_by_id**](ProductsApi.md#find_product_by_id) | **GET** /products/{id} | Find Product by ID


# **add_product**
> Product add_product(products)



Creates a new product in the system

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

api_instance = Beanie::ProductsApi.new

products = Beanie::ProductInput.new # ProductInput | Product to add to the system


begin
  result = api_instance.add_product(products)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductsApi->add_product: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **products** | [**ProductInput**](ProductInput.md)| Product to add to the system | 

### Return type

[**Product**](Product.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_product_by_id**
> Product find_product_by_id(id)

Find Product by ID

Returns a single product if the user has access

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

api_instance = Beanie::ProductsApi.new

id = 789 # Integer | ID of product to fetch


begin
  #Find Product by ID
  result = api_instance.find_product_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductsApi->find_product_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product to fetch | 

### Return type

[**Product**](Product.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



