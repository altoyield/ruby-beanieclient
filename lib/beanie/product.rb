module Beanie
  class Product < Api
    attr_accessor :id, :description, :name, :sku, :is_service
    attr_accessor :nominal_account_id, :product_category_id, :unit_of_measure

    def self.find_by_name(name)
      puts "Find by name: #{name}"
      Beanie.find("products", "name", name)
    end
  end
end
