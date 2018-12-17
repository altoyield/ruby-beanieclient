# Beanie::NominalAccountCategoriesApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_nominal_account_category**](NominalAccountCategoriesApi.md#add_nominal_account_category) | **POST** /nominal_account_categories | 
[**find_nominal_account_category_by_id**](NominalAccountCategoriesApi.md#find_nominal_account_category_by_id) | **GET** /nominal_account_categories/{id} | Find Nominal account category by ID


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

api_instance = Beanie::NominalAccountCategoriesApi.new

nominal_account_categories = Beanie::NominalAccountCategoryInput.new # NominalAccountCategoryInput | Nominal account category to add to the system


begin
  result = api_instance.add_nominal_account_category(nominal_account_categories)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountCategoriesApi->add_nominal_account_category: #{e}"
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

api_instance = Beanie::NominalAccountCategoriesApi.new

id = 789 # Integer | ID of nominal account category to fetch


begin
  #Find Nominal account category by ID
  result = api_instance.find_nominal_account_category_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling NominalAccountCategoriesApi->find_nominal_account_category_by_id: #{e}"
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



