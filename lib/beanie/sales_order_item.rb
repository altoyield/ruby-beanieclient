module Beanie
  class SalesOrderItem < Api
    attr_accessor :id, :completion, :description, :discount, :frequency, :quantity, :rundate, :state
    attr_accessor :sales_order_id, :product_id, :service_period, :unit_cost, :sales_tax
  
    STATE_NEW = 0
    STATE_READY = 1
    STATE_DONE = 2
    STATE_BLOCKED = 3
  
    STATE_NAMES = [
      ["New Order Item", STATE_NEW],
      ["Billable", STATE_READY],
      ["Complete", STATE_DONE],
      ["Blocked", STATE_BLOCKED]
    ].freeze
  
    BILL_FREQUENCY_IMMEDIATE = 0
    BILL_FREQUENCY_WEEKLY = 1
    BILL_FREQUENCY_MONTHLY = 2
    BILL_FREQUENCY_QUARTERLY = 3
    BILL_FREQUENCY_ANNUALLY = 4
  
    BILL_FREQUENCY_NAMES = [
      ["Immediate", BILL_FREQUENCY_IMMEDIATE],
      ["Weekly", BILL_FREQUENCY_WEEKLY],
      ["Monthly", BILL_FREQUENCY_MONTHLY],
      ["Quarterly", BILL_FREQUENCY_QUARTERLY],
      ["Yearly", BILL_FREQUENCY_ANNUALLY]
    ].freeze
  
    SERVICE_PERIOD_ONEOFF = 0
    SERVICE_PERIOD_HOURLY = 1
    SERVICE_PERIOD_DAILY = 2
    SERVICE_PERIOD_WEEKLY = 3
    SERVICE_PERIOD_MONTHLY = 4
    SERVICE_PERIOD_QUARTERLY = 5
    SERVICE_PERIOD_ANNUALLY = 6
  
    SERVICE_PERIOD_NAMES = [
      ["One-Off", SERVICE_PERIOD_ONEOFF],
      ["Hourly Rate", SERVICE_PERIOD_HOURLY],
      ["Daily Rate", SERVICE_PERIOD_DAILY],
      ["Weekly Rate", SERVICE_PERIOD_WEEKLY],
      ["Monthly Rate", SERVICE_PERIOD_MONTHLY],
      ["Quarterly Rate", SERVICE_PERIOD_QUARTERLY],
      ["Annual Rate", SERVICE_PERIOD_ANNUALLY]
    ].freeze
  
    #
    # Pretty name for the state
    def state_name
      STATE_NAMES[state][0]
    end
  
    #
    # Pretty name for the frequency
    def frequency_name
      BILL_FREQUENCY_NAMES.each do |fn|
        return fn[0] if fn[1] == self.frequency
      end
      return "Unknown?"
    end
  
    #
    # Service period name
    def period_name
      SERVICE_PERIOD_NAMES[service_period][0]
    end
  
    #
    # Is this item active?
    def active?
      state == STATE_READY
    end
  
    #
    # Is this item blocked?
    def blocked?
      state == STATE_BLOCKED
    end
  
    #
    # Is this a one-off rather than a time-based item?
    def one_off?
      self.service_period == SERVICE_PERIOD_ONEOFF
    end
  end
end
