# Beanie::WorkCentreGroupApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_work_centre_group_by_id**](WorkCentreGroupApi.md#find_work_centre_group_by_id) | **GET** /work_centre_groups/{id} | Find Work centre group by ID
[**find_work_centre_groups**](WorkCentreGroupApi.md#find_work_centre_groups) | **GET** /work_centre_groups | All work centre group


# **find_work_centre_group_by_id**
> WorkCentreGroup find_work_centre_group_by_id(id)

Find Work centre group by ID

Returns a single work centre group if the user has access

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

api_instance = Beanie::WorkCentreGroupApi.new

id = 789 # Integer | ID of work centre group to fetch


begin
  #Find Work centre group by ID
  result = api_instance.find_work_centre_group_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling WorkCentreGroupApi->find_work_centre_group_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of work centre group to fetch | 

### Return type

[**WorkCentreGroup**](WorkCentreGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_work_centre_groups**
> Array&lt;WorkCentreGroup&gt; find_work_centre_groups(opts)

All work centre group

Returns all work centre group from the system that the user has access to

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

api_instance = Beanie::WorkCentreGroupApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All work centre group
  result = api_instance.find_work_centre_groups(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling WorkCentreGroupApi->find_work_centre_groups: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;WorkCentreGroup&gt;**](WorkCentreGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



