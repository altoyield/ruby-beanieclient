# Beanie::BillOfMaterialApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_bill_of_materials**](BillOfMaterialApi.md#find_bill_of_materials) | **GET** /bill_of_materials | All bill of materials


# **find_bill_of_materials**
> Array&lt;BillOfMaterial&gt; find_bill_of_materials(opts)

All bill of materials

Returns all bill of materials from the system that the user has access to

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

api_instance = Beanie::BillOfMaterialApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All bill of materials
  result = api_instance.find_bill_of_materials(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BillOfMaterialApi->find_bill_of_materials: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;BillOfMaterial&gt;**](BillOfMaterial.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



