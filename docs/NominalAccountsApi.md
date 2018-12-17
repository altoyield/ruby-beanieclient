# Beanie::NominalAccountsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_nominal_account**](NominalAccountsApi.md#add_nominal_account) | **POST** /nominal_accounts | 
[**find_nominal_account_by_id**](NominalAccountsApi.md#find_nominal_account_by_id) | **GET** /nominal_accounts/{id} | Find Nominal account by ID


# **add_nominal_account**
> NominalAccount add_nominal_account(nominal_accounts)



Creates a new nominal account in the system

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

api_instance = Beanie::NominalAccountsApi.new

nominal_accounts = Beanie::NominalAccountInput.new # NominalAccountInput | Nominal account to add to the system


begin
  result = api_instance.add_nominal_account(nominal_accounts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountsApi->add_nominal_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nominal_accounts** | [**NominalAccountInput**](NominalAccountInput.md)| Nominal account to add to the system | 

### Return type

[**NominalAccount**](NominalAccount.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_nominal_account_by_id**
> NominalAccount find_nominal_account_by_id(id)

Find Nominal account by ID

Returns a single nominal account if the user has access

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

api_instance = Beanie::NominalAccountsApi.new

id = 789 # Integer | ID of nominal account to fetch


begin
  #Find Nominal account by ID
  result = api_instance.find_nominal_account_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountsApi->find_nominal_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of nominal account to fetch | 

### Return type

[**NominalAccount**](NominalAccount.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



