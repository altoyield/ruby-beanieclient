module Beanie
  class SalesInvoice < Api
    attr_accessor :id, :date, :due_date, :number, :is_credit_note, :local_gross, :shipping, :sub_total, :tax
    attr_accessor :tax_point, :sales_order_id, :original_invoice, :state
  
    STATE_NEW = 0
    STATE_POSTED = 1
    STATE_SENT = 2
    STATE_PAID = 3
    STATE_CANCELLED = 4
    STATE_OVERDUE1 = 5
    STATE_OVERDUE2 = 6
    STATE_OVERDUE3 = 7
    STATE_OVERDUE4 = 8
    STATE_OVERDUE5 = 9
  
    STATE_NAMES = [
      ["New (Unposted)", STATE_NEW],
      ["Posted to Journal", STATE_POSTED],
      ["Sent to Customer", STATE_SENT],
      ["Paid", STATE_PAID],
      ["Cancelled", STATE_CANCELLED],
      ["Overdue (Past 30 days)", STATE_OVERDUE1],
      ["Overdue (Past 45 days)", STATE_OVERDUE2],
      ["Overdue (Over 60 days)", STATE_OVERDUE3],
      ["Overdue (Over 90 days)", STATE_OVERDUE4],
      ["Overdue (Over 120 days)", STATE_OVERDUE5]
    ].freeze
  
    #
    # Show the state in a useful format
    def state_name
      STATE_NAMES[self.state][0]
    end
  end
end
