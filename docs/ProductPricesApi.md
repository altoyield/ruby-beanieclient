# Beanie::ProductPricesApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_product_price**](ProductPricesApi.md#add_product_price) | **POST** /product_prices | 
[**find_product_price_by_id**](ProductPricesApi.md#find_product_price_by_id) | **GET** /product_prices/{id} | Find Product price by ID


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

api_instance = Beanie::ProductPricesApi.new

product_prices = Beanie::ProductPriceInput.new # ProductPriceInput | Product price to add to the system


begin
  result = api_instance.add_product_price(product_prices)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductPricesApi->add_product_price: #{e}"
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

api_instance = Beanie::ProductPricesApi.new

id = 789 # Integer | ID of product price to fetch


begin
  #Find Product price by ID
  result = api_instance.find_product_price_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductPricesApi->find_product_price_by_id: #{e}"
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



