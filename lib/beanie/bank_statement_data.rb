module Beanie
  class BankStatementData < Api
    attr_accessor :id, :cr_amount, :date, :dr_amount, :balance, :bank_statement_id
    attr_accessor :narrative1, :narrative2, :narrative3, :narrative4, :narrative5
  end
end
