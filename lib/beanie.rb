# Ruby bindings for the Beanie API
# Docs at http://bean.ie/docs/api/ruby
require 'cgi'
require 'openssl'
require 'rest-client'
require 'json'

require File.dirname(__FILE__) + '/beanie/api'
require File.dirname(__FILE__) + '/beanie/bank_account'
require File.dirname(__FILE__) + '/beanie/bank_statement_data'
require File.dirname(__FILE__) + '/beanie/bank_statement'
require File.dirname(__FILE__) + '/beanie/beanie_alert'
require File.dirname(__FILE__) + '/beanie/billable'
require File.dirname(__FILE__) + '/beanie/company_member'
require File.dirname(__FILE__) + '/beanie/company'
require File.dirname(__FILE__) + '/beanie/config_type'
require File.dirname(__FILE__) + '/beanie/config_value'
require File.dirname(__FILE__) + '/beanie/contact_address'
require File.dirname(__FILE__) + '/beanie/contact_note'
require File.dirname(__FILE__) + '/beanie/contact'
require File.dirname(__FILE__) + '/beanie/customer'
require File.dirname(__FILE__) + '/beanie/document'
require File.dirname(__FILE__) + '/beanie/fixed_asset'
require File.dirname(__FILE__) + '/beanie/journal_item'
require File.dirname(__FILE__) + '/beanie/journal'
require File.dirname(__FILE__) + '/beanie/nominal_account_category'
require File.dirname(__FILE__) + '/beanie/nominal_account'
require File.dirname(__FILE__) + '/beanie/product_category'
require File.dirname(__FILE__) + '/beanie/product_price'
require File.dirname(__FILE__) + '/beanie/product'
require File.dirname(__FILE__) + '/beanie/purchase_invoice'
require File.dirname(__FILE__) + '/beanie/purchase_order_item'
require File.dirname(__FILE__) + '/beanie/purchase_order'
require File.dirname(__FILE__) + '/beanie/sales_invoice_item'
require File.dirname(__FILE__) + '/beanie/sales_invoice'
require File.dirname(__FILE__) + '/beanie/sales_order_item'
require File.dirname(__FILE__) + '/beanie/sales_order'
require File.dirname(__FILE__) + '/beanie/stock_adjustment'
require File.dirname(__FILE__) + '/beanie/stock_category'
require File.dirname(__FILE__) + '/beanie/stock_item'
require File.dirname(__FILE__) + '/beanie/stock_location'
require File.dirname(__FILE__) + '/beanie/stock_supplier'
require File.dirname(__FILE__) + '/beanie/supplier'
require File.dirname(__FILE__) + '/beanie/tax_registration'
require File.dirname(__FILE__) + '/beanie/vat_record'
require File.dirname(__FILE__) + '/beanie/vat_return'
require File.dirname(__FILE__) + '/beanie/version'
require File.dirname(__FILE__) + '/beanie/work_centre_group'
require File.dirname(__FILE__) + '/beanie/work_centre'

module Beanie
  @@base_uri = 'https://bean.ie'
  @@token = nil

  class << self
    attr_accessor :api_key, :api_version, :secret_key
  end

  def self.api_url(url='', api_base_uri=nil)
    (api_base_uri || @base_uri) + url
  end

  def self.connect(opts = {})
    @api_key = opts[:api_key] if opts[:api_key]
    @secret_key = opts[:secret_key] if opts[:secret_key]
    p opts
    puts "API KEY: #{@api_key}"
    puts "SECRET: #{@secret_key}"
  end

  def self.get_token
    unless @@token
      #
      # We need to get an authentication token from the server
      unless @api_key and @secret_key
        raise AuthenticationError.new('No API Key / Secret Key provided.' \
                                      'Set your API Key using "Beanie.api_key = <API-KEY>". ' \
                                      'Set your Secret Key using "Beanie.secret_key = <SECRET>". ' \
                                      'You can generate API keys from the Beanie web interface. ' \
                                      'See https://bean.ie/en/apikey for details or email support@bean.ie ' \
                                      'for further assistance.')
      end
      url = "#{@@base_uri}/api/authenticate"
      data = {:api_key => @api_key, :secret_key => @secret_key}
      response = RestClient.post(url, data.to_json, :content_type => :json, :accept => :json)
      puts "Token response: #{response.code} (data: #{response.body})"
      raise AuthenticationError.new('Authentication failure.') unless response.code == 202
      data = JSON.parse(response.body)
      @@token = data['token']
    end
    @@token
  end

  def self.base_uri
    @@base_uri
  end

  def self.base_uri=(uri)
    @@base_uri = uri
  end
end
