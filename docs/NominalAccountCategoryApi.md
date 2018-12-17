# Beanie::NominalAccountCategoryApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_nominal_account_category**](NominalAccountCategoryApi.md#add_nominal_account_category) | **POST** /nominal_account_categories | 
[**find_nominal_account_categories**](NominalAccountCategoryApi.md#find_nominal_account_categories) | **GET** /nominal_account_categories | All nominal account category
[**find_nominal_account_category_by_id**](NominalAccountCategoryApi.md#find_nominal_account_category_by_id) | **GET** /nominal_account_categories/{id} | Find Nominal account category by ID


# **add_nominal_account_category**
> NominalAccountCategory add_nominal_account_category(nominal_account_categories)



Creates a new nominal account category in the system

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

api_instance = Beanie::NominalAccountCategoryApi.new

nominal_account_categories = Beanie::NominalAccountCategoryInput.new # NominalAccountCategoryInput | Nominal account category to add to the system


begin
  result = api_instance.add_nominal_account_category(nominal_account_categories)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountCategoryApi->add_nominal_account_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nominal_account_categories** | [**NominalAccountCategoryInput**](NominalAccountCategoryInput.md)| Nominal account category to add to the system | 

### Return type

[**NominalAccountCategory**](NominalAccountCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_nominal_account_categories**
> Array&lt;NominalAccountCategory&gt; find_nominal_account_categories(opts)

All nominal account category

Returns all nominal account category from the system that the user has access to

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

api_instance = Beanie::NominalAccountCategoryApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All nominal account category
  result = api_instance.find_nominal_account_categories(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountCategoryApi->find_nominal_account_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;NominalAccountCategory&gt;**](NominalAccountCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_nominal_account_category_by_id**
> NominalAccountCategory find_nominal_account_category_by_id(id)

Find Nominal account category by ID

Returns a single nominal account category if the user has access

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

api_instance = Beanie::NominalAccountCategoryApi.new

id = 789 # Integer | ID of nominal account category to fetch


begin
  #Find Nominal account category by ID
  result = api_instance.find_nominal_account_category_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountCategoryApi->find_nominal_account_category_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of nominal account category to fetch | 

### Return type

[**NominalAccountCategory**](NominalAccountCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



