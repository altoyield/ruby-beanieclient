#
# Copyright (c) 2017-2018, AltoYield Limited.  All rights reserved.
#
# This is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# It is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
# for more details.
#
# You should have received a copy of the GNU General Public License along
# with this product; see the file COPYING.  If not, write to the Free
# Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#
# THIS SOFTWARE IS PROVIDED BY ALTOYIELD LIMITED "AS IS" AND ANY EXPRESS
# OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL ALTOYIELD LIMITED BE LIABLE FOR
# ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
# DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING
# IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
module Beanie
  class WorkCentre < Api
    attr_accessor :id, :name, :location, :description, :work_centre_group_id

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @name = nil
      @location = nil
      @description = nil
      @work_centre_group_id = nil
    end

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
