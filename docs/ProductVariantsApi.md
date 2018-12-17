# Beanie::ProductVariantsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_product_variant**](ProductVariantsApi.md#add_product_variant) | **POST** /product_variants | 
[**find_product_variant_by_id**](ProductVariantsApi.md#find_product_variant_by_id) | **GET** /product_variants/{id} | Find Product variant by ID


# **add_product_variant**
> ProductVariant add_product_variant(product_variants)



Creates a new product variant in the system

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

api_instance = Beanie::ProductVariantsApi.new

product_variants = Beanie::ProductVariantInput.new # ProductVariantInput | Product variant to add to the system


begin
  result = api_instance.add_product_variant(product_variants)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductVariantsApi->add_product_variant: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_variants** | [**ProductVariantInput**](ProductVariantInput.md)| Product variant to add to the system | 

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_product_variant_by_id**
> ProductVariant find_product_variant_by_id(id)

Find Product variant by ID

Returns a single product variant if the user has access

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

api_instance = Beanie::ProductVariantsApi.new

id = 789 # Integer | ID of product variant to fetch


begin
  #Find Product variant by ID
  result = api_instance.find_product_variant_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductVariantsApi->find_product_variant_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of product variant to fetch | 

### Return type

[**ProductVariant**](ProductVariant.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



