# Beanie::SalesInvoiceApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_sales_invoice**](SalesInvoiceApi.md#add_sales_invoice) | **POST** /sales_invoices | 
[**find_sales_invoice_by_id**](SalesInvoiceApi.md#find_sales_invoice_by_id) | **GET** /sales_invoices/{id} | Find Sales invoice by ID
[**find_sales_invoices**](SalesInvoiceApi.md#find_sales_invoices) | **GET** /sales_invoices | All sales invoice


# **add_sales_invoice**
> SalesInvoice add_sales_invoice(sales_invoices)



Creates a new sales invoice in the system

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

api_instance = Beanie::SalesInvoiceApi.new

sales_invoices = Beanie::SalesInvoiceInput.new # SalesInvoiceInput | Sales invoice to add to the system


begin
  result = api_instance.add_sales_invoice(sales_invoices)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SalesInvoiceApi->add_sales_invoice: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sales_invoices** | [**SalesInvoiceInput**](SalesInvoiceInput.md)| Sales invoice to add to the system | 

### Return type

[**SalesInvoice**](SalesInvoice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_sales_invoice_by_id**
> SalesInvoice find_sales_invoice_by_id(id)

Find Sales invoice by ID

Returns a single sales invoice if the user has access

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

api_instance = Beanie::SalesInvoiceApi.new

id = 789 # Integer | ID of sales invoice to fetch


begin
  #Find Sales invoice by ID
  result = api_instance.find_sales_invoice_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SalesInvoiceApi->find_sales_invoice_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| ID of sales invoice to fetch | 

### Return type

[**SalesInvoice**](SalesInvoice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **find_sales_invoices**
> Array&lt;SalesInvoice&gt; find_sales_invoices(opts)

All sales invoice

Returns all sales invoice from the system that the user has access to

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

api_instance = Beanie::SalesInvoiceApi.new

opts = { 
  tags: ['tags_example'], # Array<String> | tags to filter by
  limit: 56 # Integer | Maximum number of results to return
}

begin
  #All sales invoice
  result = api_instance.find_sales_invoices(opts)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SalesInvoiceApi->find_sales_invoices: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tags** | [**Array&lt;String&gt;**](String.md)| tags to filter by | [optional] 
 **limit** | **Integer**| Maximum number of results to return | [optional] 

### Return type

[**Array&lt;SalesInvoice&gt;**](SalesInvoice.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



