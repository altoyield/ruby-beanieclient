# Beanie::PartnerApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_partner**](PartnerApi.md#add_partner) | **POST** /partners | 
[**find_partner_by_id**](PartnerApi.md#find_partner_by_id) | **GET** /partners/{id} | Find Partner by ID
[**find_partners**](PartnerApi.md#find_partners) | **GET** /partners | All partners


# **add_partner**
> Partner add_partner(partners)



Creates a new partner in the system

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

api_instance = Beanie::PartnerApi.new

partners = Beanie::PartnerInput.new # PartnerInput | Partner to add to the system


begin
  result = api_instance.add_partner(partners)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PartnerApi->add_partner: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **partners** | [**PartnerInput**](PartnerInput.md)| Partner to add to the system | 

### Return type

[**Partner**](Partner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_partner_by_id**
> Customer find_partner_by_id(id)

Find Partner by ID

Returns a single partner if the user has access

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

api_instance = Beanie::PartnerApi.new

id = 789 # Integer | ID of partner to fetch


begin
  #Find Partner by ID
  result = api_instance.find_partner_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PartnerApi->find_partner_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of partner to fetch | 

### Return type

[**Customer**](Customer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_partners**
> Array&lt;Partner&gt; find_partners(opts)

All partners

Returns all partners from the system that the user has access to

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

api_instance = Beanie::PartnerApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All partners
  result = api_instance.find_partners(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PartnerApi->find_partners: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;Partner&gt;**](Partner.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



