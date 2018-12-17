# Beanie::CustomerApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_customer**](CustomerApi.md#add_customer) | **POST** /customers | 
[**find_customer_by_id**](CustomerApi.md#find_customer_by_id) | **GET** /customers/{id} | Find Customer by ID
[**find_customers**](CustomerApi.md#find_customers) | **GET** /customers | All customer


# **add_customer**
> Customer add_customer(customers)



Creates a new customer in the system

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

api_instance = Beanie::CustomerApi.new

customers = Beanie::CustomerInput.new # CustomerInput | Customer to add to the system


begin
  result = api_instance.add_customer(customers)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerApi->add_customer: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customers** | [**CustomerInput**](CustomerInput.md)| Customer to add to the system | 

### Return type

[**Customer**](Customer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_customer_by_id**
> Customer find_customer_by_id(id)

Find Customer by ID

Returns a single customer if the user has access

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

api_instance = Beanie::CustomerApi.new

id = 789 # Integer | ID of customer to fetch


begin
  #Find Customer by ID
  result = api_instance.find_customer_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerApi->find_customer_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of customer to fetch | 

### Return type

[**Customer**](Customer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_customers**
> Array&lt;Customer&gt; find_customers(opts)

All customer

Returns all customer from the system that the user has access to

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

api_instance = Beanie::CustomerApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All customer
  result = api_instance.find_customers(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerApi->find_customers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;Customer&gt;**](Customer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



