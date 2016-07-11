module Beanie
  class Supplier < Api
    attr_accessor :id, :balance, :state, :supplier_vat, :terms, :lead_time, :minimum_order_amount
    attr_accessor :contact_id, :currency
  end
end
