module Beanie
  class NominalAccountCategory < Api
    attr_accessor :id, :na_type, :name, :parent_category_id

    NA_TYPE_FIXED_ASSETS = 0
    NA_TYPE_CURRENT_ASSETS = 1
    NA_TYPE_CURRENT_LIABILITIES = 2
    NA_TYPE_NON_CURRENT_LIABILITIES = 3
    NA_TYPE_RESERVES = 4
    NA_TYPE_INCOME = 5
    NA_TYPE_DIRECT_COSTS = 6
    NA_TYPE_EXPENSE = 7
    NA_TYPE_OTHER_EXPENSE = 8
    NA_TYPE_OTHER_INCOME = 9
  
    NA_TYPE_NAMES = [
      ["Fixed Assets", NA_TYPE_FIXED_ASSETS],
      ["Current Assets", NA_TYPE_CURRENT_ASSETS],
      ["Current Liabilities", NA_TYPE_CURRENT_LIABILITIES],
      ["Non-Current Liabilities", NA_TYPE_NON_CURRENT_LIABILITIES],
      ["Reserves", NA_TYPE_RESERVES],
      ["Income", NA_TYPE_INCOME],
      ["Direct Costs", NA_TYPE_DIRECT_COSTS],
      ["Expense", NA_TYPE_EXPENSE],
      ["Other Expense", NA_TYPE_OTHER_EXPENSE],
      ["Other Income", NA_TYPE_OTHER_INCOME]
    ].freeze
  
    #
    # Show proper name for type
    def na_type_name
      NA_TYPE_NAMES[na_type][0]
    end
  end
end
