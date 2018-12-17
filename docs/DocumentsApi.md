# Beanie::DocumentsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document**](DocumentsApi.md#add_document) | **POST** /documents | 
[**find_document_by_id**](DocumentsApi.md#find_document_by_id) | **GET** /documents/{id} | Find Document by ID


# **add_document**
> Document add_document(documents)



Creates a new document in the system

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

api_instance = Beanie::DocumentsApi.new

documents = Beanie::DocumentInput.new # DocumentInput | Document to add to the system


begin
  result = api_instance.add_document(documents)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DocumentsApi->add_document: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **documents** | [**DocumentInput**](DocumentInput.md)| Document to add to the system | 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_document_by_id**
> Document find_document_by_id(id)

Find Document by ID

Returns a single document if the user has access

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

api_instance = Beanie::DocumentsApi.new

id = 789 # Integer | ID of document to fetch


begin
  #Find Document by ID
  result = api_instance.find_document_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DocumentsApi->find_document_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of document to fetch | 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



