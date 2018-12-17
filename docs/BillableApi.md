# Beanie::BillableApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_billable**](BillableApi.md#add_billable) | **POST** /billables | 
[**find_billable_by_id**](BillableApi.md#find_billable_by_id) | **GET** /billables/{id} | Find Billable record by ID
[**find_billables**](BillableApi.md#find_billables) | **GET** /billables | All billable record


# **add_billable**
> Billable add_billable(billables)



Creates a new billable record in the system

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

api_instance = Beanie::BillableApi.new

billables = Beanie::BillableInput.new # BillableInput | Billable record to add to the system


begin
  result = api_instance.add_billable(billables)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BillableApi->add_billable: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billables** | [**BillableInput**](BillableInput.md)| Billable record to add to the system | 

### Return type

[**Billable**](Billable.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_billable_by_id**
> Billable find_billable_by_id(id)

Find Billable record by ID

Returns a single billable record if the user has access

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

api_instance = Beanie::BillableApi.new

id = 789 # Integer | ID of billable record to fetch


begin
  #Find Billable record by ID
  result = api_instance.find_billable_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BillableApi->find_billable_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of billable record to fetch | 

### Return type

[**Billable**](Billable.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_billables**
> Array&lt;Billable&gt; find_billables(opts)

All billable record

Returns all billable record from the system that the user has access to

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

api_instance = Beanie::BillableApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All billable record
  result = api_instance.find_billables(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BillableApi->find_billables: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;Billable&gt;**](Billable.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



