# Beanie::BillOfMaterialsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_bill_of_material**](BillOfMaterialsApi.md#add_bill_of_material) | **POST** /bill_of_materials | 
[**find_bill_of_material_by_id**](BillOfMaterialsApi.md#find_bill_of_material_by_id) | **GET** /bill_of_materials/{id} | Find Bill of Materials by ID
[**find_bill_of_materials**](BillOfMaterialsApi.md#find_bill_of_materials) | **GET** /bill_of_materials | All bill of materials


# **add_bill_of_material**
> BillOfMaterial add_bill_of_material(bill_of_materials)



Creates a new bill of materials in the system

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

api_instance = Beanie::BillOfMaterialsApi.new

bill_of_materials = Beanie::BillOfMaterialInput.new # BillOfMaterialInput | Bill of Materials to add to the system


begin
  result = api_instance.add_bill_of_material(bill_of_materials)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BillOfMaterialsApi->add_bill_of_material: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bill_of_materials** | [**BillOfMaterialInput**](BillOfMaterialInput.md)| Bill of Materials to add to the system | 

### Return type

[**BillOfMaterial**](BillOfMaterial.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_bill_of_material_by_id**
> BillOfMaterial find_bill_of_material_by_id(id)

Find Bill of Materials by ID

Returns a single bill of materials if the user has access

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

api_instance = Beanie::BillOfMaterialsApi.new

id = 789 # Integer | ID of bill of materials to fetch


begin
  #Find Bill of Materials by ID
  result = api_instance.find_bill_of_material_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BillOfMaterialsApi->find_bill_of_material_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of bill of materials to fetch | 

### Return type

[**BillOfMaterial**](BillOfMaterial.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



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

api_instance = Beanie::BillOfMaterialsApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All bill of materials
  result = api_instance.find_bill_of_materials(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BillOfMaterialsApi->find_bill_of_materials: #{e}"
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



