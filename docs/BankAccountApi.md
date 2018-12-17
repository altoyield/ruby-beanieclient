# Beanie::BankAccountApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_bank_account**](BankAccountApi.md#add_bank_account) | **POST** /bank_accounts | 
[**find_bank_account_by_id**](BankAccountApi.md#find_bank_account_by_id) | **GET** /bank_accounts/{id} | Find Bank Account by ID
[**find_bank_accounts**](BankAccountApi.md#find_bank_accounts) | **GET** /bank_accounts | All bank accounts


# **add_bank_account**
> BankAccount add_bank_account(bank_account)



Creates a new bank account in the system

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

api_instance = Beanie::BankAccountApi.new

bank_account = Beanie::BankAccountInput.new # BankAccountInput | Bank account to add to the system


begin
  result = api_instance.add_bank_account(bank_account)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BankAccountApi->add_bank_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bank_account** | [**BankAccountInput**](BankAccountInput.md)| Bank account to add to the system | 

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_bank_account_by_id**
> BankAccount find_bank_account_by_id(id)

Find Bank Account by ID

Returns a single bank account if the user has access

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

api_instance = Beanie::BankAccountApi.new

id = 789 # Integer | ID of bank account to fetch


begin
  #Find Bank Account by ID
  result = api_instance.find_bank_account_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BankAccountApi->find_bank_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of bank account to fetch | 

### Return type

[**BankAccount**](BankAccount.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_bank_accounts**
> Array&lt;BankAccount&gt; find_bank_accounts(opts)

All bank accounts

Returns all bank accounts from the system that the user has access to

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

api_instance = Beanie::BankAccountApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | maximum number of results to return
}

begin
  #All bank accounts
  result = api_instance.find_bank_accounts(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BankAccountApi->find_bank_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| maximum number of results to return | [optional] 

### Return type

[**Array&lt;BankAccount&gt;**](BankAccount.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



