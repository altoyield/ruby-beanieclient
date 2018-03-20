#
# Copyright (c) 2017-2018, AltoYield Limited.  All rights reserved.
#
# This is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# It is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License along
# with this product; see the file COPYING.  If not, write to the Free
# Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#
# THIS SOFTWARE IS PROVIDED BY ALTOYIELD LIMITED "AS IS" AND ANY EXPRESS
# OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL ALTOYIELD LIMITED BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
# IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Ruby bindings for the Beanie API
# Docs at http://bean.ie/help/api/ruby
require 'rest-client'
require 'json'

require File.dirname(__FILE__) + '/beanie/api'
require File.dirname(__FILE__) + '/beanie/version'
require File.dirname(__FILE__) + '/beanie/company'
require File.dirname(__FILE__) + '/beanie/company_member'
require File.dirname(__FILE__) + '/beanie/bank_account'
require File.dirname(__FILE__) + '/beanie/bank_statement'
require File.dirname(__FILE__) + '/beanie/bank_statement_data'
require File.dirname(__FILE__) + '/beanie/beanie_alert'
require File.dirname(__FILE__) + '/beanie/billable'
require File.dirname(__FILE__) + '/beanie/bill_of_material'
require File.dirname(__FILE__) + '/beanie/bom_item'
require File.dirname(__FILE__) + '/beanie/config_type'
require File.dirname(__FILE__) + '/beanie/config_value'
require File.dirname(__FILE__) + '/beanie/customer'
require File.dirname(__FILE__) + '/beanie/customer_address'
require File.dirname(__FILE__) + '/beanie/customer_note'
require File.dirname(__FILE__) + '/beanie/document'
require File.dirname(__FILE__) + '/beanie/fixed_asset'
require File.dirname(__FILE__) + '/beanie/journal'
require File.dirname(__FILE__) + '/beanie/journal_item'
require File.dirname(__FILE__) + '/beanie/nominal_account_category'
require File.dirname(__FILE__) + '/beanie/nominal_account'
require File.dirname(__FILE__) + '/beanie/product_category'
require File.dirname(__FILE__) + '/beanie/product'
require File.dirname(__FILE__) + '/beanie/product_price'
require File.dirname(__FILE__) + '/beanie/work_centre_group'
require File.dirname(__FILE__) + '/beanie/work_centre'
require File.dirname(__FILE__) + '/beanie/production_order'
require File.dirname(__FILE__) + '/beanie/purchase_invoice'
require File.dirname(__FILE__) + '/beanie/purchase_order'
require File.dirname(__FILE__) + '/beanie/purchase_order_item'
require File.dirname(__FILE__) + '/beanie/sales_invoice'
require File.dirname(__FILE__) + '/beanie/sales_invoice_item'
require File.dirname(__FILE__) + '/beanie/sales_order'
require File.dirname(__FILE__) + '/beanie/sales_order_item'
require File.dirname(__FILE__) + '/beanie/stock_location'
require File.dirname(__FILE__) + '/beanie/stock_category'
require File.dirname(__FILE__) + '/beanie/stock_item'
require File.dirname(__FILE__) + '/beanie/stock_adjustment'
require File.dirname(__FILE__) + '/beanie/stock_supplier'
require File.dirname(__FILE__) + '/beanie/supplier'
require File.dirname(__FILE__) + '/beanie/supplier_address'
require File.dirname(__FILE__) + '/beanie/supplier_note'
require File.dirname(__FILE__) + '/beanie/tax_registration'
require File.dirname(__FILE__) + '/beanie/vat_record'
require File.dirname(__FILE__) + '/beanie/vat_return'

DEFAULT_URI = "https://bean.ie"

module Beanie
  @@token = nil

  class << self
    attr_accessor :api_key, :api_version, :secret_key
  end

  def self.api_url(url='', api_base_uri=nil)
    (api_base_uri || @base_uri) + url
  end

  def self.connect(opts = {})
    @base_uri = opts[:base_uri] ? opts[:base_uri] : DEFAULT_URI
    @api_key = opts[:api_key] if opts[:api_key]
    @secret_key = opts[:secret_key] if opts[:secret_key]
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
                                      'See #{DEFAULT_URI}/help/api/key for details or email ' \
                                      'support@bean.ie for further assistance.')
      end
      url = "#{@base_uri}/api/authenticate"
      data = {:api_key => @api_key, :secret_key => @secret_key}
      response = RestClient.post(url, data.to_json, :content_type => :json, :accept => :json)
      raise AuthenticationError.new('Authentication failure.') unless response.code == 202
      data = JSON.parse(response.body)
      @@token = data['token']
    end
    @@token
  end

  def self.base_uri
    @base_uri
  end
end
