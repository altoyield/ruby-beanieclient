module Beanie
  class JournalItem < Api
    attr_accessor :id, :amount, :is_credit, :journal_id, :nominal_account_id
  end
end
