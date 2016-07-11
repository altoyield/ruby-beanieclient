module Beanie
  class PurchaseOrder < Api
    attr_accessor :id, :date, :number, :title
    attr_accessor :currency, :supplier_id
  end
end
