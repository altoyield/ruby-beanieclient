# Beanie::CompanyApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_company_by_id**](CompanyApi.md#find_company_by_id) | **GET** /companies/{id} | Find Company details by ID


# **find_company_by_id**
> Company find_company_by_id(id)

Find Company details by ID

Returns a single company details if the user has access

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

api_instance = Beanie::CompanyApi.new

id = 789 # Integer | ID of company details to fetch


begin
  #Find Company details by ID
  result = api_instance.find_company_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CompanyApi->find_company_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of company details to fetch | 

### Return type

[**Company**](Company.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



