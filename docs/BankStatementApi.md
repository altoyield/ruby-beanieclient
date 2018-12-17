# Beanie::BankStatementApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_bank_statement**](BankStatementApi.md#add_bank_statement) | **POST** /bank_statements | 
[**find_bank_statement_by_id**](BankStatementApi.md#find_bank_statement_by_id) | **GET** /bank_statements/{id} | Find Bank statement by ID
[**find_bank_statements**](BankStatementApi.md#find_bank_statements) | **GET** /bank_statements | All bank statement


# **add_bank_statement**
> BankStatement add_bank_statement(bank_statements)



Creates a new bank statement in the system

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

api_instance = Beanie::BankStatementApi.new

bank_statements = Beanie::BankStatementInput.new # BankStatementInput | Bank statement to add to the system


begin
  result = api_instance.add_bank_statement(bank_statements)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BankStatementApi->add_bank_statement: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bank_statements** | [**BankStatementInput**](BankStatementInput.md)| Bank statement to add to the system | 

### Return type

[**BankStatement**](BankStatement.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_bank_statement_by_id**
> BankStatement find_bank_statement_by_id(id)

Find Bank statement by ID

Returns a single bank statement if the user has access

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

api_instance = Beanie::BankStatementApi.new

id = 789 # Integer | ID of bank statement to fetch


begin
  #Find Bank statement by ID
  result = api_instance.find_bank_statement_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BankStatementApi->find_bank_statement_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of bank statement to fetch | 

### Return type

[**BankStatement**](BankStatement.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_bank_statements**
> Array&lt;BankStatement&gt; find_bank_statements(opts)

All bank statement

Returns all bank statement from the system that the user has access to

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

api_instance = Beanie::BankStatementApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All bank statement
  result = api_instance.find_bank_statements(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling BankStatementApi->find_bank_statements: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;BankStatement&gt;**](BankStatement.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



