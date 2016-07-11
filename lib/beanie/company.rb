module Beanie
  class Company < Api
    attr_accessor :id, :name, :email, :address1, :address2, :address3, :city
    attr_accessor :state_county, :website, :phone, :fax, :zip_postcode
    attr_accessor :registration, :next_fye, :runcom, :country, :currency
    attr_accessor :invoice_template_id, :purchase_shipping_nominal_account_id
    attr_accessor :sales_shipping_nominal_account_id
    attr_accessor :accounts_receivable_nominal_account_id
    attr_accessor :accounts_payable_nominal_account_id
  end
end
