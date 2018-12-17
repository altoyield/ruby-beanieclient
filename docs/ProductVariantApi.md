# Beanie::ProductVariantApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_product_variant**](ProductVariantApi.md#add_product_variant) | **POST** /product_variants | 
[**find_product_variant_by_id**](ProductVariantApi.md#find_product_variant_by_id) | **GET** /product_variants/{id} | Find Product variant by ID
[**find_product_variants**](ProductVariantApi.md#find_product_variants) | **GET** /product_variants | All product variant


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

api_instance = Beanie::ProductVariantApi.new

product_variants = Beanie::ProductVariantInput.new # ProductVariantInput | Product variant to add to the system


begin
  result = api_instance.add_product_variant(product_variants)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductVariantApi->add_product_variant: #{e}"
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

api_instance = Beanie::ProductVariantApi.new

id = 789 # Integer | ID of product variant to fetch


begin
  #Find Product variant by ID
  result = api_instance.find_product_variant_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductVariantApi->find_product_variant_by_id: #{e}"
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



# **find_product_variants**
> Array&lt;ProductVariant&gt; find_product_variants(opts)

All product variant

Returns all product variant from the system that the user has access to

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

api_instance = Beanie::ProductVariantApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All product variant
  result = api_instance.find_product_variants(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ProductVariantApi->find_product_variants: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;ProductVariant&gt;**](ProductVariant.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



