# Beanie::ProductPriceApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_product_price**](ProductPriceApi.md#add_product_price) | **POST** /product_prices | 
[**find_product_price_by_id**](ProductPriceApi.md#find_product_price_by_id) | **GET** /product_prices/{id} | Find Product price by ID
[**find_product_prices**](ProductPriceApi.md#find_product_prices) | **GET** /product_prices | All product price


# **add_product_price**
> ProductPrice add_product_price(product_prices)



Creates a new product price in the system

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

api_instance = Beanie::ProductPriceApi.new

product_prices = Beanie::ProductPriceInput.new # ProductPriceInput | Product price to add to the system


begin
  result = api_instance.add_product_price(product_prices)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductPriceApi->add_product_price: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_prices** | [**ProductPriceInput**](ProductPriceInput.md)| Product price to add to the system | 

### Return type

[**ProductPrice**](ProductPrice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_product_price_by_id**
> ProductPrice find_product_price_by_id(id)

Find Product price by ID

Returns a single product price if the user has access

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

api_instance = Beanie::ProductPriceApi.new

id = 789 # Integer | ID of product price to fetch


begin
  #Find Product price by ID
  result = api_instance.find_product_price_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductPriceApi->find_product_price_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product price to fetch | 

### Return type

[**ProductPrice**](ProductPrice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_product_prices**
> Array&lt;ProductPrice&gt; find_product_prices(opts)

All product price

Returns all product price from the system that the user has access to

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

api_instance = Beanie::ProductPriceApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All product price
  result = api_instance.find_product_prices(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductPriceApi->find_product_prices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;ProductPrice&gt;**](ProductPrice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



