module Beanie
  class BankAccount < Api
    attr_accessor :id, :iban, :name, :swift, :nominal_account_id, :contact_id
  end
end
