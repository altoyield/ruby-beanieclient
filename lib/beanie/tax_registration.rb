module Beanie
  class TaxRegistration < Api
    attr_accessor :id, :tax_type, :number, :nominal_account_id
  
    TAX_TYPE_CORPORATE = 0
    TAX_TYPE_SALES = 1
    TAX_TYPE_PAYROLL = 2
  
    TAX_TYPE_NAMES = [
      ["Corporation Tax", TAX_TYPE_CORPORATE],
      ["VAT", TAX_TYPE_SALES],
      ["PAYE", TAX_TYPE_PAYROLL]
    ].freeze
  
    #
    # Tax Type as a name
    def tax_type_name
      TAX_TYPE_NAMES[tax_type][0]
    end
  end
end
