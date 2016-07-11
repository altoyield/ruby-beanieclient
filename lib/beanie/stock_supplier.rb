module Beanie
  class StockSupplier < Api
    attr_accessor :id, :priority, :supplier_partno, :lot_size, :lead_time, :last_price
    attr_accessor :stock_item_id, :supplier_id
  end
end
