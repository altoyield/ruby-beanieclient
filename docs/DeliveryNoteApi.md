# Beanie::DeliveryNoteApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_delivery_note**](DeliveryNoteApi.md#add_delivery_note) | **POST** /delivery_notes | 
[**find_delivery_note_by_id**](DeliveryNoteApi.md#find_delivery_note_by_id) | **GET** /delivery_notes/{id} | Find Delivery note by ID
[**find_delivery_notes**](DeliveryNoteApi.md#find_delivery_notes) | **GET** /delivery_notes | All delivery note


# **add_delivery_note**
> DeliveryNote add_delivery_note(delivery_notes)



Creates a new delivery note in the system

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

api_instance = Beanie::DeliveryNoteApi.new

delivery_notes = Beanie::DeliveryNoteInput.new # DeliveryNoteInput | Delivery note to add to the system


begin
  result = api_instance.add_delivery_note(delivery_notes)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DeliveryNoteApi->add_delivery_note: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delivery_notes** | [**DeliveryNoteInput**](DeliveryNoteInput.md)| Delivery note to add to the system | 

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_delivery_note_by_id**
> DeliveryNote find_delivery_note_by_id(id)

Find Delivery note by ID

Returns a single delivery note if the user has access

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

api_instance = Beanie::DeliveryNoteApi.new

id = 789 # Integer | ID of delivery note to fetch


begin
  #Find Delivery note by ID
  result = api_instance.find_delivery_note_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DeliveryNoteApi->find_delivery_note_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of delivery note to fetch | 

### Return type

[**DeliveryNote**](DeliveryNote.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_delivery_notes**
> Array&lt;DeliveryNote&gt; find_delivery_notes(opts)

All delivery note

Returns all delivery note from the system that the user has access to

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

api_instance = Beanie::DeliveryNoteApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All delivery note
  result = api_instance.find_delivery_notes(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DeliveryNoteApi->find_delivery_notes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;DeliveryNote&gt;**](DeliveryNote.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



