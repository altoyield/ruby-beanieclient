module Beanie
  class VatRecord < Api
    attr_accessor :id, :amount, :record_type, :vat_return_id, :sales_tax_rate
  
    TYPE_SALES = 0
    TYPE_PURCHASES = 1
    TYPE_GOODS_FROM = 2
    TYPE_GOODS_TO = 3
    TYPE_SERVICES_FROM = 4
    TYPE_SERVICES_TO = 5
  
    TYPE_NAMES = [
      ["Sales", TYPE_SALES],
      ["Purchases", TYPE_PURCHASES],
      ["Goods From", TYPE_GOODS_FROM],
      ["Goods To", TYPE_GOODS_TO],
      ["Services From", TYPE_SERVICES_FROM],
      ["Services To", TYPE_SERVICES_TO]
    ].freeze
  
    #
    # Conver the record type into a string
    def record_type_name
      TYPE_NAMES[self.record_type][0]
    end
  end
end
