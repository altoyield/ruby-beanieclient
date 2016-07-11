module Beanie
  class WorkCentre < Api
    attr_accessor :id, :name, :location, :description, :work_centre_group_id

    #
    # Find all work centres under a specific work centre group
    def self.find_all_by_group(work_centre_group_id)
      all = []
      data = self.get(:url => "/work_centre_groups/#{work_centre_group_id}/work_centres")
      data['work_centres'].each do |wc_data|
        wc = new
        wc.populate(wc_data, :id, :name, :location, :description)
        all << wc
      end
      all
    end

    #
    # Get the provisioning data
    def provisioning
      response = WorkCentre.get(:url => "/work_centres/#{@id}/provisioning")
      response["data"]
    end

    #
    # Update/set the provisioning data
    def provisioning=(data)
      pdata = {:data => data}
      response = WorkCentre.post(pdata, :url => "/work_centres/#{@id}/provisioning")
      p response
    end
  end
end
