module Beanie
  class PurchaseInvoice < Api
    attr_accessor :id, :date, :due_date, :is_credit_note, :is_paid, :local_gross, :number
    attr_accessor :original_invoice_id, :shipping, :sub_total, :tax, :tax_point
    attr_accessor :purchase_order_id, :document_id
  end
end
