# Beanie::PartnerAddressApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_partner_address**](PartnerAddressApi.md#add_partner_address) | **POST** /partner_addresses | 
[**find_partner_address_by_id**](PartnerAddressApi.md#find_partner_address_by_id) | **GET** /partner_addresses/{id} | Find Partner address by ID
[**find_partner_addresses**](PartnerAddressApi.md#find_partner_addresses) | **GET** /partner_addresses | All partner address


# **add_partner_address**
> PartnerAddress add_partner_address(partner_addresses)



Creates a new partner address in the system

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

api_instance = Beanie::PartnerAddressApi.new

partner_addresses = Beanie::PartnerAddressInput.new # PartnerAddressInput | Partner address to add to the system


begin
  result = api_instance.add_partner_address(partner_addresses)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PartnerAddressApi->add_partner_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partner_addresses** | [**PartnerAddressInput**](PartnerAddressInput.md)| Partner address to add to the system | 

### Return type

[**PartnerAddress**](PartnerAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_partner_address_by_id**
> PartnerAddress find_partner_address_by_id(id)

Find Partner address by ID

Returns a single partner address if the user has access

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

api_instance = Beanie::PartnerAddressApi.new

id = 789 # Integer | ID of partner address to fetch


begin
  #Find Partner address by ID
  result = api_instance.find_partner_address_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PartnerAddressApi->find_partner_address_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of partner address to fetch | 

### Return type

[**PartnerAddress**](PartnerAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_partner_addresses**
> Array&lt;PartnerAddress&gt; find_partner_addresses(opts)

All partner address

Returns all partner address from the system that the user has access to

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

api_instance = Beanie::PartnerAddressApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All partner address
  result = api_instance.find_partner_addresses(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PartnerAddressApi->find_partner_addresses: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;PartnerAddress&gt;**](PartnerAddress.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



