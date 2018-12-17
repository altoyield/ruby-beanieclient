# Beanie::DeliveryNotesApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_delivery_note**](DeliveryNotesApi.md#add_delivery_note) | **POST** /delivery_notes | 
[**find_delivery_note_by_id**](DeliveryNotesApi.md#find_delivery_note_by_id) | **GET** /delivery_notes/{id} | Find Delivery note by ID


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

api_instance = Beanie::DeliveryNotesApi.new

delivery_notes = Beanie::DeliveryNoteInput.new # DeliveryNoteInput | Delivery note to add to the system


begin
  result = api_instance.add_delivery_note(delivery_notes)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DeliveryNotesApi->add_delivery_note: #{e}"
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

api_instance = Beanie::DeliveryNotesApi.new

id = 789 # Integer | ID of delivery note to fetch


begin
  #Find Delivery note by ID
  result = api_instance.find_delivery_note_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling DeliveryNotesApi->find_delivery_note_by_id: #{e}"
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



