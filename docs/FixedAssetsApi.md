# Beanie::FixedAssetsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_fixed_asset**](FixedAssetsApi.md#add_fixed_asset) | **POST** /fixed_assets | 
[**find_fixed_asset_by_id**](FixedAssetsApi.md#find_fixed_asset_by_id) | **GET** /fixed_assets/{id} | Find Fixed asset by ID


# **add_fixed_asset**
> FixedAsset add_fixed_asset(fixed_assets)



Creates a new fixed asset in the system

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

api_instance = Beanie::FixedAssetsApi.new

fixed_assets = Beanie::FixedAssetInput.new # FixedAssetInput | Fixed asset to add to the system


begin
  result = api_instance.add_fixed_asset(fixed_assets)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling FixedAssetsApi->add_fixed_asset: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fixed_assets** | [**FixedAssetInput**](FixedAssetInput.md)| Fixed asset to add to the system | 

### Return type

[**FixedAsset**](FixedAsset.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_fixed_asset_by_id**
> FixedAsset find_fixed_asset_by_id(id)

Find Fixed asset by ID

Returns a single fixed asset if the user has access

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

api_instance = Beanie::FixedAssetsApi.new

id = 789 # Integer | ID of fixed asset to fetch


begin
  #Find Fixed asset by ID
  result = api_instance.find_fixed_asset_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling FixedAssetsApi->find_fixed_asset_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of fixed asset to fetch | 

### Return type

[**FixedAsset**](FixedAsset.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



