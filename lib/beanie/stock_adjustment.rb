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
  class StockAdjustment < Api
    attr_accessor :id, :effective, :adjustment_type, :amount, :note
    attr_accessor :stock_item_id, :stock_supplier_id, :purchase_order_item_id
  
    TYPE_STOCK_TAKING = 0
    TYPE_SCHED_REQUEST = 1
    TYPE_ORDER_WAIT = 2
    TYPE_TO_INVENTORY = 3
    TYPE_FROM_INVENTORY = 3
    TYPE_SPOILAGE = 4
  
    TYPE_NAMES = [
      ["Stock-Taking", TYPE_STOCK_TAKING],
      ["Scheduled Request", TYPE_SCHED_REQUEST],
      ["Awaiting Delivery", TYPE_ORDER_WAIT],
      ["Move to Inventory", TYPE_TO_INVENTORY],
      ["Move from Inventory", TYPE_FROM_INVENTORY],
      ["Spoilage", TYPE_SPOILAGE]
    ].freeze
  
    #
    # Convert the type into a useful name
    def type_name
      TYPE_NAMES[adjustment_type][0]
    end
  end
end
