# Beanie::WorkCentreGroupsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_work_centre_group**](WorkCentreGroupsApi.md#add_work_centre_group) | **POST** /work_centre_groups | 
[**find_work_centre_group_by_id**](WorkCentreGroupsApi.md#find_work_centre_group_by_id) | **GET** /work_centre_groups/{id} | Find Work centre group by ID


# **add_work_centre_group**
> WorkCentreGroup add_work_centre_group(work_centre_groups)



Creates a new work centre group in the system

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

api_instance = Beanie::WorkCentreGroupsApi.new

work_centre_groups = Beanie::WorkCentreGroupInput.new # WorkCentreGroupInput | Work centre group to add to the system


begin
  result = api_instance.add_work_centre_group(work_centre_groups)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling WorkCentreGroupsApi->add_work_centre_group: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_centre_groups** | [**WorkCentreGroupInput**](WorkCentreGroupInput.md)| Work centre group to add to the system | 

### Return type

[**WorkCentreGroup**](WorkCentreGroup.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



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

api_instance = Beanie::WorkCentreGroupsApi.new

id = 789 # Integer | ID of work centre group to fetch


begin
  #Find Work centre group by ID
  result = api_instance.find_work_centre_group_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling WorkCentreGroupsApi->find_work_centre_group_by_id: #{e}"
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



