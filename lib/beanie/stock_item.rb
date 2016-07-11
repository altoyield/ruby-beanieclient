module Beanie
  class StockItem < Api
    attr_accessor :id, :description, :item_type, :name, :sku, :stock_category_id, :unit_of_measure
  
    TYPE_PURCHASED = 0
    TYPE_RAW_MATERIAL = 1
    TYPE_WORK_IN_PROGRESS = 2
    TYPE_FINISHED_GOODS = 3
  
    TYPE_NAMES = [
      ["Purchased for Resale", TYPE_PURCHASED],
      ["Raw Materials", TYPE_RAW_MATERIAL],
      ["Work In Progress", TYPE_WORK_IN_PROGRESS],
      ["Finished Goods", TYPE_FINISHED_GOODS]
    ].freeze
  end
end
