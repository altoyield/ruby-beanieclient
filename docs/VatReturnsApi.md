# Beanie::VatReturnsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_vat_return**](VatReturnsApi.md#add_vat_return) | **POST** /vat_returns | 
[**find_vat_return_by_id**](VatReturnsApi.md#find_vat_return_by_id) | **GET** /vat_returns/{id} | Find VAT return by ID


# **add_vat_return**
> VatReturn add_vat_return(vat_returns)



Creates a new vat return in the system

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

api_instance = Beanie::VatReturnsApi.new

vat_returns = Beanie::VatReturnInput.new # VatReturnInput | VAT return to add to the system


begin
  result = api_instance.add_vat_return(vat_returns)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling VatReturnsApi->add_vat_return: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vat_returns** | [**VatReturnInput**](VatReturnInput.md)| VAT return to add to the system | 

### Return type

[**VatReturn**](VatReturn.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_vat_return_by_id**
> VatReturn find_vat_return_by_id(id)

Find VAT return by ID

Returns a single vat return if the user has access

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

api_instance = Beanie::VatReturnsApi.new

id = 789 # Integer | ID of vat return to fetch


begin
  #Find VAT return by ID
  result = api_instance.find_vat_return_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling VatReturnsApi->find_vat_return_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of vat return to fetch | 

### Return type

[**VatReturn**](VatReturn.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



