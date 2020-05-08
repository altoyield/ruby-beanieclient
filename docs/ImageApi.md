# Beanie::ImageApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_image**](ImageApi.md#add_image) | **POST** /images | 
[**find_image_by_id**](ImageApi.md#find_image_by_id) | **GET** /images/{id} | Find Image by ID
[**find_images**](ImageApi.md#find_images) | **GET** /images | All image


# **add_image**
> Image add_image(images)



Creates a new image in the system

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

api_instance = Beanie::ImageApi.new

images = Beanie::ImageInput.new # ImageInput | Image to add to the system


begin
  result = api_instance.add_image(images)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ImageApi->add_image: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **images** | [**ImageInput**](ImageInput.md)| Image to add to the system | 

### Return type

[**Image**](Image.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_image_by_id**
> Image find_image_by_id(id)

Find Image by ID

Returns a single image if the user has access

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

api_instance = Beanie::ImageApi.new

id = 789 # Integer | ID of image to fetch


begin
  #Find Image by ID
  result = api_instance.find_image_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ImageApi->find_image_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of image to fetch | 

### Return type

[**Image**](Image.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_images**
> Array&lt;Image&gt; find_images(opts)

All image

Returns all image from the system that the user has access to

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

api_instance = Beanie::ImageApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All image
  result = api_instance.find_images(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling ImageApi->find_images: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;Image&gt;**](Image.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



