# Beanie::CustomerAddressesApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_customer_address**](CustomerAddressesApi.md#add_customer_address) | **POST** /customer_addresses | 
[**find_customer_address_by_id**](CustomerAddressesApi.md#find_customer_address_by_id) | **GET** /customer_addresses/{id} | Find Customer address by ID


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

api_instance = Beanie::CustomerAddressesApi.new

customer_addresses = Beanie::CustomerAddressInput.new # CustomerAddressInput | Customer address to add to the system


begin
  result = api_instance.add_customer_address(customer_addresses)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerAddressesApi->add_customer_address: #{e}"
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

api_instance = Beanie::CustomerAddressesApi.new

id = 789 # Integer | ID of customer address to fetch


begin
  #Find Customer address by ID
  result = api_instance.find_customer_address_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling CustomerAddressesApi->find_customer_address_by_id: #{e}"
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



