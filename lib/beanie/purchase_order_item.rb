module Beanie
  class PurchaseOrderItem < Api
    attr_accessor :id, :description, :discount, :quantity, :state, :unit_cost
    attr_accessor :purchase_order_id, :sales_tax
  
    STATE_NEW = 0
    STATE_PARTIAL = 1
    STATE_BACKORDER = 2
    STATE_COMPLETE = 3
  
    STATE_NAMES = [
      ["Awaiting Receipt", STATE_NEW],
      ["Partial Delivery", STATE_PARTIAL],
      ["Back-Order", STATE_BACKORDER],
      ["Item Complete", STATE_COMPLETE]
    ].freeze
  end
end
