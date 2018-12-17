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
  class SalesOrderItem < Api
    attr_accessor :id, :completion, :description, :discount, :quantity, :rundate, :state
    attr_accessor :sales_order_id, :product_id, :service_period, :unit_cost, :sales_tax

    STATE_NEW = 0
    STATE_DONE = 1
    STATE_CANCELLED = 2
    STATE_DELETED = 3
    STATE_READY = 4
    STATE_SHIP_WAIT = 5
    STATE_ON_HOLD = 6
    STATE_BACKORDER = 7
    STATE_ADVANCE_BILL = 8

    STATE_NAMES = [
      ["New Order Item", STATE_NEW],
      ["Complete", STATE_DONE],
      ["Cancelled", STATE_CANCELLED],
      ["* DELETED *", STATE_DELETED],
      ["Ready for Processing", STATE_READY],
      ["Awaiting Shipment", STATE_SHIP_WAIT],
      ["On Hold", STATE_ON_HOLD],
      ["Back-Order", STATE_BACKORDER],
      ["Bill-in-Advance", STATE_ADVANCE_BILL]
    ].freeze

    SERVICE_PERIOD_ONEOFF = 0
    SERVICE_PERIOD_HOURLY = 1
    SERVICE_PERIOD_DAILY = 2
    SERVICE_PERIOD_WEEKLY = 3
    SERVICE_PERIOD_MONTHLY = 4
    SERVICE_PERIOD_QUARTERLY = 5
    SERVICE_PERIOD_ANNUALLY = 6
  
    SERVICE_PERIOD_NAMES = [
      ["One-Off", SERVICE_PERIOD_ONEOFF],
      ["Hourly Rate", SERVICE_PERIOD_HOURLY],
      ["Daily Rate", SERVICE_PERIOD_DAILY],
      ["Weekly Rate", SERVICE_PERIOD_WEEKLY],
      ["Monthly Rate", SERVICE_PERIOD_MONTHLY],
      ["Quarterly Rate", SERVICE_PERIOD_QUARTERLY],
      ["Annual Rate", SERVICE_PERIOD_ANNUALLY]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @completion = nil
      @description = nil
      @discount = nil
      @quantity = nil
      @rundate = nil
      @state = nil
      @sales_order_id = nil
      @product_id = nil
      @service_period = nil
      @unit_cost = nil
      @sales_tax = nil
    end
  
    #
    # Pretty name for the state
    def state_name
      STATE_NAMES[state][0]
    end
  
    #
    # Service period name
    def period_name
      SERVICE_PERIOD_NAMES[service_period][0]
    end
  
    #
    # Is this item active?
    def active?
      state == STATE_READY
    end
  
    #
    # Is this item blocked?
    def blocked?
      state == STATE_BLOCKED
    end
  
    #
    # Is this a one-off rather than a time-based item?
    def one_off?
      self.service_period == SERVICE_PERIOD_ONEOFF
    end

    #
    # Get the private data
    def private_data
      response = SalesOrderItem.get(:url => "/sales_order_items/#{@id}/private_data")
      response["data"]
    end

    #
    # Update/set the private data
    def private_data=(data)
      pdata = {:data => data}
      response = SalesOrderItem.post(pdata, :url => "/sales_order_items/#{@id}/private_data")
    end
  end
end
