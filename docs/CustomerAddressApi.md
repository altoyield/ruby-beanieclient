# Beanie::CustomerAddressApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_customer_address**](CustomerAddressApi.md#add_customer_address) | **POST** /customer_addresses | 
[**find_customer_address_by_id**](CustomerAddressApi.md#find_customer_address_by_id) | **GET** /customer_addresses/{id} | Find Customer address by ID
[**find_customer_addresses**](CustomerAddressApi.md#find_customer_addresses) | **GET** /customer_addresses | All customer address


# **add_customer_address**
> CustomerAddress add_customer_address(customer_addresses)



Creates a new customer address in the system

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

api_instance = Beanie::CustomerAddressApi.new

customer_addresses = Beanie::CustomerAddressInput.new # CustomerAddressInput | Customer address to add to the system


begin
  result = api_instance.add_customer_address(customer_addresses)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerAddressApi->add_customer_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_addresses** | [**CustomerAddressInput**](CustomerAddressInput.md)| Customer address to add to the system | 

### Return type

[**CustomerAddress**](CustomerAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_customer_address_by_id**
> CustomerAddress find_customer_address_by_id(id)

Find Customer address by ID

Returns a single customer address if the user has access

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

api_instance = Beanie::CustomerAddressApi.new

id = 789 # Integer | ID of customer address to fetch


begin
  #Find Customer address by ID
  result = api_instance.find_customer_address_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerAddressApi->find_customer_address_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of customer address to fetch | 

### Return type

[**CustomerAddress**](CustomerAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_customer_addresses**
> Array&lt;CustomerAddress&gt; find_customer_addresses(opts)

All customer address

Returns all customer address from the system that the user has access to

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

api_instance = Beanie::CustomerAddressApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All customer address
  result = api_instance.find_customer_addresses(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerAddressApi->find_customer_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;CustomerAddress&gt;**](CustomerAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



