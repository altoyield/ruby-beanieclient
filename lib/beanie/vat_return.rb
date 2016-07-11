module Beanie
  class VatReturn < Api
    attr_accessor :id, :start_date, :end_date, :return_type, :purchase, :sales
    attr_accessor :goods_from, :goods_to, :services_from, :services_to
  
    RETURN_TYPE_ORIGINAL = 0
    RETURN_TYPE_SUPPLEMENTARY = 1
    RETURN_TYPE_AMENDED = 2
  
    RETURN_TYPES = [
      ["Original Return", RETURN_TYPE_ORIGINAL],
      ["Supplementary Return", RETURN_TYPE_SUPPLEMENTARY],
      ["Amended Return", RETURN_TYPE_AMENDED]
    ].freeze
  end
end
