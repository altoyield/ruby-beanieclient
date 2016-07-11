module Beanie
  class Document < Api
    attr_accessor :id, :bxref, :mime_type, :size, :src_file, :category
  
    CATEGORY_UNFILED = 0
    CATEGORY_DEBIT_CARD_EXPENSES = 1
    CATEGORY_CASH_EXPENSES = 2
    CATEGORY_PURCHASE_INVOICES = 3
    CATEGORY_SALES_INVOICES = 4
    CATEGORY_BANK_STATEMENTS = 5
    CATEGORY_CONTRACTS = 6
    CATEGORY_MISCELLANEOUS = 7
  
    CATEGORIES = [
      ["Unfiled", CATEGORY_UNFILED],
      ["Debit Card Expenses", CATEGORY_DEBIT_CARD_EXPENSES],
      ["Cash Expenses", CATEGORY_CASH_EXPENSES],
      ["Purchase Invoices", CATEGORY_PURCHASE_INVOICES],
      ["Sales Invoices", CATEGORY_SALES_INVOICES],
      ["Bank Statements", CATEGORY_BANK_STATEMENTS],
      ["Contracts", CATEGORY_CONTRACTS],
      ["Miscellaneous", CATEGORY_MISCELLANEOUS]
    ].freeze
  
    #
    # Display a name for the document category
    def category_name
      CATEGORIES[self.category][0]
    end
  end
end
