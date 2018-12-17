# Beanie::WorkCentresApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_work_centre**](WorkCentresApi.md#add_work_centre) | **POST** /work_centres | 
[**find_work_centre_by_id**](WorkCentresApi.md#find_work_centre_by_id) | **GET** /work_centres/{id} | Find Work centre by ID


# **add_work_centre**
> WorkCentre add_work_centre(work_centres)



Creates a new work centre in the system

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

api_instance = Beanie::WorkCentresApi.new

work_centres = Beanie::WorkCentreInput.new # WorkCentreInput | Work centre to add to the system


begin
  result = api_instance.add_work_centre(work_centres)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling WorkCentresApi->add_work_centre: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **work_centres** | [**WorkCentreInput**](WorkCentreInput.md)| Work centre to add to the system | 

### Return type

[**WorkCentre**](WorkCentre.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_work_centre_by_id**
> WorkCentre find_work_centre_by_id(id)

Find Work centre by ID

Returns a single work centre if the user has access

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

api_instance = Beanie::WorkCentresApi.new

id = 789 # Integer | ID of work centre to fetch


begin
  #Find Work centre by ID
  result = api_instance.find_work_centre_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling WorkCentresApi->find_work_centre_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of work centre to fetch | 

### Return type

[**WorkCentre**](WorkCentre.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



