# Beanie::ShippingCentresApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_shipping_centre**](ShippingCentresApi.md#add_shipping_centre) | **POST** /shipping_centres | 
[**find_shipping_centre_by_id**](ShippingCentresApi.md#find_shipping_centre_by_id) | **GET** /shipping_centres/{id} | Find Shipping centre by ID


# **add_shipping_centre**
> ShippingCentre add_shipping_centre(shipping_centres)



Creates a new shipping centre in the system

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

api_instance = Beanie::ShippingCentresApi.new

shipping_centres = Beanie::ShippingCentreInput.new # ShippingCentreInput | Shipping centre to add to the system


begin
  result = api_instance.add_shipping_centre(shipping_centres)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ShippingCentresApi->add_shipping_centre: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shipping_centres** | [**ShippingCentreInput**](ShippingCentreInput.md)| Shipping centre to add to the system | 

### Return type

[**ShippingCentre**](ShippingCentre.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_shipping_centre_by_id**
> ShippingCentre find_shipping_centre_by_id(id)

Find Shipping centre by ID

Returns a single shipping centre if the user has access

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

api_instance = Beanie::ShippingCentresApi.new

id = 789 # Integer | ID of shipping centre to fetch


begin
  #Find Shipping centre by ID
  result = api_instance.find_shipping_centre_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ShippingCentresApi->find_shipping_centre_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of shipping centre to fetch | 

### Return type

[**ShippingCentre**](ShippingCentre.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



