module Beanie
  class Billable < Api
    attr_accessor :id, :sales_invoice_item_id, :sales_order_item_id
    attr_accessor :quantity, :start, :description
  end
end
