module Beanie
  class Contact < Api
    attr_accessor :id, :first_name, :last_name, :suffix, :title, :company_name, :email, :phone, :website
    attr_accessor :id, :address1, :address2, :address3, :city, :state_county, :zip_postcode, :country
  
    TITLE_NONE = 0
    TITLE_MR = 1
    TITLE_MRS = 2
    TITLE_MS = 3
    TITLE_MASTER = 4
    TITLE_DR = 5
    TITLE_FR = 6
    TITLE_REV = 7
  
    TITLE_NAMES = [
      ["", TITLE_NONE],
      ["Mr", TITLE_MR],
      ["Mrs", TITLE_MRS],
      ["Ms", TITLE_MS],
      ["Master", TITLE_MASTER],
      ["Dr", TITLE_DR],
      ["Fr", TITLE_FR],
      ["Rev", TITLE_REV]
    ].freeze
  end
end
