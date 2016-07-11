module Beanie
  class StockAdjustment < Api
    attr_accessor :id, :effective, :adjustment_type, :amount, :note
    attr_accessor :stock_item_id, :stock_supplier_id, :purchase_order_item_id
  
    TYPE_STOCK_TAKING = 0
    TYPE_SCHED_REQUEST = 1
    TYPE_ORDER_WAIT = 2
    TYPE_TO_INVENTORY = 3
    TYPE_FROM_INVENTORY = 3
    TYPE_SPOILAGE = 4
  
    TYPE_NAMES = [
      ["Stock-Taking", TYPE_STOCK_TAKING],
      ["Scheduled Request", TYPE_SCHED_REQUEST],
      ["Awaiting Delivery", TYPE_ORDER_WAIT],
      ["Move to Inventory", TYPE_TO_INVENTORY],
      ["Move from Inventory", TYPE_FROM_INVENTORY],
      ["Spoilage", TYPE_SPOILAGE]
    ].freeze
  
    #
    # Convert the type into a useful name
    def type_name
      TYPE_NAMES[adjustment_type][0]
    end
  end
end
