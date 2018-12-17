# Beanie::NominalAccountApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_nominal_account**](NominalAccountApi.md#add_nominal_account) | **POST** /nominal_accounts | 
[**find_nominal_account_by_id**](NominalAccountApi.md#find_nominal_account_by_id) | **GET** /nominal_accounts/{id} | Find Nominal account by ID
[**find_nominal_accounts**](NominalAccountApi.md#find_nominal_accounts) | **GET** /nominal_accounts | All nominal account


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

api_instance = Beanie::NominalAccountApi.new

nominal_accounts = Beanie::NominalAccountInput.new # NominalAccountInput | Nominal account to add to the system


begin
  result = api_instance.add_nominal_account(nominal_accounts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountApi->add_nominal_account: #{e}"
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

api_instance = Beanie::NominalAccountApi.new

id = 789 # Integer | ID of nominal account to fetch


begin
  #Find Nominal account by ID
  result = api_instance.find_nominal_account_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountApi->find_nominal_account_by_id: #{e}"
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



# **find_nominal_accounts**
> Array&lt;NominalAccount&gt; find_nominal_accounts(opts)

All nominal account

Returns all nominal account from the system that the user has access to

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

api_instance = Beanie::NominalAccountApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All nominal account
  result = api_instance.find_nominal_accounts(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountApi->find_nominal_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;NominalAccount&gt;**](NominalAccount.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



