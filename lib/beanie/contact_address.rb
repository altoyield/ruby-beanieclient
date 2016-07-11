module Beanie
  class ContactAddress < Api
    attr_accessor :id, :address_type, :address1, :address2, :address3, :city, :state_county
    attr_accessor :zip_postcode, :contact_id, :country
  end
end
