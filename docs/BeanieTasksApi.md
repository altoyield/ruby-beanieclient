# Beanie::BeanieTasksApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_beanie_task**](BeanieTasksApi.md#add_beanie_task) | **POST** /beanie_tasks | 
[**find_beanie_task_by_id**](BeanieTasksApi.md#find_beanie_task_by_id) | **GET** /beanie_tasks/{id} | Find Beanie task by ID


# **add_beanie_task**
> BeanieTask add_beanie_task(beanie_tasks)



Creates a new beanie task in the system

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

api_instance = Beanie::BeanieTasksApi.new

beanie_tasks = Beanie::BeanieTaskInput.new # BeanieTaskInput | Beanie task to add to the system


begin
  result = api_instance.add_beanie_task(beanie_tasks)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BeanieTasksApi->add_beanie_task: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **beanie_tasks** | [**BeanieTaskInput**](BeanieTaskInput.md)| Beanie task to add to the system | 

### Return type

[**BeanieTask**](BeanieTask.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_beanie_task_by_id**
> BeanieTask find_beanie_task_by_id(id)

Find Beanie task by ID

Returns a single beanie task if the user has access

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

api_instance = Beanie::BeanieTasksApi.new

id = 789 # Integer | ID of beanie task to fetch


begin
  #Find Beanie task by ID
  result = api_instance.find_beanie_task_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BeanieTasksApi->find_beanie_task_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of beanie task to fetch | 

### Return type

[**BeanieTask**](BeanieTask.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



