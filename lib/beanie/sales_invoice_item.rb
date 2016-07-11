module Beanie
  class SalesInvoiceItem < Api
    attr_accessor :id, :description, :discount, :quantity, :run_date, :run_length, :unit_cost
    attr_accessor :sales_invoice_id, :sales_order_item_id, :sales_tax
  end
end
