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
  class ProductionOrder < Api
    attr_accessor :id, :number, :state, :quantity, :notes
    attr_accessor :sales_order_id, :bill_of_material_id, :work_centre_group_id

    STATE_NEW = 0
    STATE_DONE = 1
    STATE_FAILED = 2
    STATE_DELETED = 3
    STATE_ORDER_HOLD = 4
    STATE_IN_QUEUE = 5
    STATE_ASSIGNED = 6
    STATE_STARTED = 7

    STATE_NAMES = [
      ["New Production Order", STATE_NEW],
      ["Order Complete", STATE_DONE],
      ["Production Failed", STATE_FAILED],
      ["* DELETED *", STATE_DELETED],
      ["Blocked by Sales Order", STATE_ORDER_HOLD],
      ["In Scheduler Queue", STATE_IN_QUEUE],
      ["In Work Centre Queue ", STATE_ASSIGNED],
      ["In Process", STATE_STARTED]
    ].freeze

    #
    # Pretty name for the state
    def state_name
      STATE_NAMES[state][0]
    end

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @number = nil
      @state = nil
      @quantity = nil
      @notes = nil
      @sales_order_id = nil
      @bill_of_material_id = nil
      @work_centre_group_id = nil
      @_private_data = nil
    end

    #
    # Notify system we have started work on this order
    def start_work(message)
      ProductionOrder.put({:message => message}, :url => "/production_orders/#{@id}/start")
    end

    #
    # Notify system we have stopped work on this order
    def stop_work(message)
      ProductionOrder.put({:message => message}, :url => "/production_orders/#{@id}/start")
    end

    #
    # Get the private data
    def private_data
      unless @_private_data
        response = ProductionOrder.get(:url => "/production_orders/#{@id}/private_data")
        @_private_data = response["data"]
      end
      return @_private_data
    end

    #
    # Update/set the private data
    def private_data=(data)
      @_private_data = data
      pdata = {:data => data}
      ProductionOrder.post(pdata, :url => "/production_orders/#{@id}/private_data")
    end

    #
    # Construct the path a little differently...
    def construct_path(opts = {})
      raise ":work_centre_group_id is not defined" unless opts[:work_centre_group_id]
      path = "/work_centre_groups/#{opts[:work_centre_group_id]}/production_orders"
      opts.delete(:work_centre_group_id)
      path
    end
  end
end
