# Beanie::ReceivedGoodsApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_received_goods**](ReceivedGoodsApi.md#add_received_goods) | **POST** /received_goods | 
[**find_received_goods**](ReceivedGoodsApi.md#find_received_goods) | **GET** /received_goods | All received goods
[**find_received_goods_by_id**](ReceivedGoodsApi.md#find_received_goods_by_id) | **GET** /received_goods/{id} | Find Received goods by ID


# **add_received_goods**
> ReceivedGoods add_received_goods(received_goods)



Creates a new received goods in the system

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

api_instance = Beanie::ReceivedGoodsApi.new

received_goods = Beanie::ReceivedGoodsInput.new # ReceivedGoodsInput | Received goods to add to the system


begin
  result = api_instance.add_received_goods(received_goods)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ReceivedGoodsApi->add_received_goods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **received_goods** | [**ReceivedGoodsInput**](ReceivedGoodsInput.md)| Received goods to add to the system | 

### Return type

[**ReceivedGoods**](ReceivedGoods.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_received_goods**
> Array&lt;ReceivedGoods&gt; find_received_goods(opts)

All received goods

Returns all received goods from the system that the user has access to

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

api_instance = Beanie::ReceivedGoodsApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All received goods
  result = api_instance.find_received_goods(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ReceivedGoodsApi->find_received_goods: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;ReceivedGoods&gt;**](ReceivedGoods.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_received_goods_by_id**
> ReceivedGoods find_received_goods_by_id(id)

Find Received goods by ID

Returns a single received goods if the user has access

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

api_instance = Beanie::ReceivedGoodsApi.new

id = 789 # Integer | ID of received goods to fetch


begin
  #Find Received goods by ID
  result = api_instance.find_received_goods_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ReceivedGoodsApi->find_received_goods_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of received goods to fetch | 

### Return type

[**ReceivedGoods**](ReceivedGoods.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



