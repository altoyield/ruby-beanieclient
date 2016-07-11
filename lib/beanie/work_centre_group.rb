module Beanie
  class WorkCentreGroup < Api
    attr_accessor :id, :code, :name, :description

    #
    # Find a work centre group by code
    def self.find_by_code(code)
      data = self.get(:code => code)
      wcg_data = data['work_centre_group']
      wcg = new
      wcg.populate(wcg_data, :id, :code, :name, :description)
      wcg
    end
  end
end
