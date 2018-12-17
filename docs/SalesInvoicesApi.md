# Beanie::SalesInvoicesApi

All URIs are relative to *https://bean.ie*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_sales_invoice**](SalesInvoicesApi.md#add_sales_invoice) | **POST** /sales_invoices | 
[**find_sales_invoice_by_id**](SalesInvoicesApi.md#find_sales_invoice_by_id) | **GET** /sales_invoices/{id} | Find Sales invoice by ID


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

api_instance = Beanie::SalesInvoicesApi.new

sales_invoices = Beanie::SalesInvoiceInput.new # SalesInvoiceInput | Sales invoice to add to the system


begin
  result = api_instance.add_sales_invoice(sales_invoices)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SalesInvoicesApi->add_sales_invoice: #{e}"
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

api_instance = Beanie::SalesInvoicesApi.new

id = 789 # Integer | ID of sales invoice to fetch


begin
  #Find Sales invoice by ID
  result = api_instance.find_sales_invoice_by_id(id)
  p result
rescue Beanie::ApiError => e
  puts "Exception when calling SalesInvoicesApi->find_sales_invoice_by_id: #{e}"
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



