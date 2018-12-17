# Beanie::DocumentApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_document**](DocumentApi.md#add_document) | **POST** /documents | 
[**find_document_by_id**](DocumentApi.md#find_document_by_id) | **GET** /documents/{id} | Find Document by ID
[**find_documents**](DocumentApi.md#find_documents) | **GET** /documents | All document


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

api_instance = Beanie::DocumentApi.new

documents = Beanie::DocumentInput.new # DocumentInput | Document to add to the system


begin
  result = api_instance.add_document(documents)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DocumentApi->add_document: #{e}"
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

api_instance = Beanie::DocumentApi.new

id = 789 # Integer | ID of document to fetch


begin
  #Find Document by ID
  result = api_instance.find_document_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DocumentApi->find_document_by_id: #{e}"
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



# **find_documents**
> Array&lt;Document&gt; find_documents(opts)

All document

Returns all document from the system that the user has access to

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

api_instance = Beanie::DocumentApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All document
  result = api_instance.find_documents(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DocumentApi->find_documents: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;Document&gt;**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



