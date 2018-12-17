# Beanie::PurchaseInvoiceApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_purchase_invoice**](PurchaseInvoiceApi.md#add_purchase_invoice) | **POST** /purchase_invoices | 
[**find_purchase_invoice_by_id**](PurchaseInvoiceApi.md#find_purchase_invoice_by_id) | **GET** /purchase_invoices/{id} | Find Purchase invoice by ID
[**find_purchase_invoices**](PurchaseInvoiceApi.md#find_purchase_invoices) | **GET** /purchase_invoices | All purchase invoice


# **add_purchase_invoice**
> PurchaseInvoice add_purchase_invoice(purchase_invoices)



Creates a new purchase invoice in the system

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

api_instance = Beanie::PurchaseInvoiceApi.new

purchase_invoices = Beanie::PurchaseInvoiceInput.new # PurchaseInvoiceInput | Purchase invoice to add to the system


begin
  result = api_instance.add_purchase_invoice(purchase_invoices)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseInvoiceApi->add_purchase_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **purchase_invoices** | [**PurchaseInvoiceInput**](PurchaseInvoiceInput.md)| Purchase invoice to add to the system | 

### Return type

[**PurchaseInvoice**](PurchaseInvoice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_purchase_invoice_by_id**
> PurchaseInvoice find_purchase_invoice_by_id(id)

Find Purchase invoice by ID

Returns a single purchase invoice if the user has access

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

api_instance = Beanie::PurchaseInvoiceApi.new

id = 789 # Integer | ID of purchase invoice to fetch


begin
  #Find Purchase invoice by ID
  result = api_instance.find_purchase_invoice_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseInvoiceApi->find_purchase_invoice_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of purchase invoice to fetch | 

### Return type

[**PurchaseInvoice**](PurchaseInvoice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_purchase_invoices**
> Array&lt;PurchaseInvoice&gt; find_purchase_invoices(opts)

All purchase invoice

Returns all purchase invoice from the system that the user has access to

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

api_instance = Beanie::PurchaseInvoiceApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All purchase invoice
  result = api_instance.find_purchase_invoices(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling PurchaseInvoiceApi->find_purchase_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;PurchaseInvoice&gt;**](PurchaseInvoice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



