# Beanie::VatRecordsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_vat_record**](VatRecordsApi.md#add_vat_record) | **POST** /vat_records | 
[**find_vat_record_by_id**](VatRecordsApi.md#find_vat_record_by_id) | **GET** /vat_records/{id} | Find VAT record by ID


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

api_instance = Beanie::VatRecordsApi.new

vat_records = Beanie::VatRecordInput.new # VatRecordInput | VAT record to add to the system


begin
  result = api_instance.add_vat_record(vat_records)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling VatRecordsApi->add_vat_record: #{e}"
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

api_instance = Beanie::VatRecordsApi.new

id = 789 # Integer | ID of vat record to fetch


begin
  #Find VAT record by ID
  result = api_instance.find_vat_record_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling VatRecordsApi->find_vat_record_by_id: #{e}"
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



