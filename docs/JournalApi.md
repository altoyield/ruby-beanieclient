# Beanie::JournalApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_journal**](JournalApi.md#add_journal) | **POST** /journals | 
[**find_journal_by_id**](JournalApi.md#find_journal_by_id) | **GET** /journals/{id} | Find Journal by ID
[**find_journals**](JournalApi.md#find_journals) | **GET** /journals | All journal


# **add_journal**
> Journal add_journal(journals)



Creates a new journal in the system

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

api_instance = Beanie::JournalApi.new

journals = Beanie::JournalInput.new # JournalInput | Journal to add to the system


begin
  result = api_instance.add_journal(journals)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling JournalApi->add_journal: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **journals** | [**JournalInput**](JournalInput.md)| Journal to add to the system | 

### Return type

[**Journal**](Journal.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_journal_by_id**
> Journal find_journal_by_id(id)

Find Journal by ID

Returns a single journal if the user has access

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

api_instance = Beanie::JournalApi.new

id = 789 # Integer | ID of journal to fetch


begin
  #Find Journal by ID
  result = api_instance.find_journal_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling JournalApi->find_journal_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of journal to fetch | 

### Return type

[**Journal**](Journal.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_journals**
> Array&lt;Journal&gt; find_journals(opts)

All journal

Returns all journal from the system that the user has access to

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

api_instance = Beanie::JournalApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All journal
  result = api_instance.find_journals(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling JournalApi->find_journals: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;Journal&gt;**](Journal.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



