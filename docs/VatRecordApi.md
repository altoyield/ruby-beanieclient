# Beanie::VatRecordApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_vat_record**](VatRecordApi.md#add_vat_record) | **POST** /vat_records | 
[**find_vat_record_by_id**](VatRecordApi.md#find_vat_record_by_id) | **GET** /vat_records/{id} | Find VAT record by ID
[**find_vat_records**](VatRecordApi.md#find_vat_records) | **GET** /vat_records | All vat record


# **add_vat_record**
> VatRecord add_vat_record(vat_records)



Creates a new vat record in the system

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

api_instance = Beanie::VatRecordApi.new

vat_records = Beanie::VatRecordInput.new # VatRecordInput | VAT record to add to the system


begin
  result = api_instance.add_vat_record(vat_records)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling VatRecordApi->add_vat_record: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vat_records** | [**VatRecordInput**](VatRecordInput.md)| VAT record to add to the system | 

### Return type

[**VatRecord**](VatRecord.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_vat_record_by_id**
> VatRecord find_vat_record_by_id(id)

Find VAT record by ID

Returns a single vat record if the user has access

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

api_instance = Beanie::VatRecordApi.new

id = 789 # Integer | ID of vat record to fetch


begin
  #Find VAT record by ID
  result = api_instance.find_vat_record_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling VatRecordApi->find_vat_record_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of vat record to fetch | 

### Return type

[**VatRecord**](VatRecord.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_vat_records**
> Array&lt;VatRecord&gt; find_vat_records(opts)

All vat record

Returns all vat record from the system that the user has access to

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

api_instance = Beanie::VatRecordApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All vat record
  result = api_instance.find_vat_records(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling VatRecordApi->find_vat_records: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;VatRecord&gt;**](VatRecord.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



