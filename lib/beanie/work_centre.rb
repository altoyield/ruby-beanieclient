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
    attr_accessor :id, :name, :state, :location, :description, :work_centre_group_id

    STATE_UNKNOWN = 0
    STATE_DONE = 1
    STATE_CANCELLED = 2
    STATE_DELETED = 3
    STATE_MAINTENANCE = 4
    STATE_OFFLINE = 5
    STATE_READY = 6
    STATE_BUSY = 7
    STATE_FINISHED = 8

    STATE_NAMES = [
      ["Unknown State", STATE_UNKNOWN],
      ["Done", STATE_DONE],
      ["Cancelled", STATE_CANCELLED],
      ["* DELETED *", STATE_DELETED],
      ["Maintenance Mode", STATE_MAINTENANCE],
      ["Offline (Unavailable)", STATE_OFFLINE],
      ["Ready for Work", STATE_READY],
      ["Working (Busy)", STATE_BUSY],
      ["Work Completed", STATE_FINISHED]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @name = nil
      @state = nil
      @location = nil
      @description = nil
      @work_centre_group_id = nil
    end

    #
    # State name
    def state_name
      STATE_NAMES[@state][0]
    end

    #
    # Commence work on the specified production order
    def start_order(production_order, message)
      WorkCentre.put({:message => message},
            :url => "/work_centres/#{@id}/start_order/#{production_order.id}")
    end

    #
    # Mark work as completed on the current production order
    def stop_order(message, success=false, hold=false)
      WorkCentre.put({:message => message,
                      :success => success,
                      :hold => hold},
                  :url => "/work_centres/#{@id}/stop_order")
    end

    #
    # Mark the current operation (if any) as complete
    def operation_complete(status)
      WorkCentre.put({:status => status}, :url => "/work_centres/#{@id}/complete")
    end

    #
    # Get the private data
    def private_data
      response = WorkCentre.get(:url => "/work_centres/#{@id}/private_data")
      response["data"]
    end

    #
    # Update/set the private data
    def private_data=(data)
      pdata = {:data => data}
      response = WorkCentre.post(pdata, :url => "/work_centres/#{@id}/private_data")
    end

    #
    # Construct the path a little differently...
    def construct_path(opts = {})
      if opts[:work_centre_group_id]
        path = "/work_centre_groups/#{opts[:work_centre_group_id]}/work_centres"
        opts.delete(:work_centre_group_id)
      else
        path = "/work_centres"
      end
      path
    end
  end
end
