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
  class StockItem < Api
    attr_accessor :id, :description, :item_type, :name, :sku, :stock_category_id, :unit_of_measure
  
    TYPE_PURCHASED = 0
    TYPE_RAW_MATERIAL = 1
    TYPE_WORK_IN_PROGRESS = 2
    TYPE_FINISHED_GOODS = 3
  
    TYPE_NAMES = [
      ["Purchased for Resale", TYPE_PURCHASED],
      ["Raw Materials", TYPE_RAW_MATERIAL],
      ["Work In Progress", TYPE_WORK_IN_PROGRESS],
      ["Finished Goods", TYPE_FINISHED_GOODS]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @description = nil
      @item_type = nil
      @name = nil
      @sku = nil
      @stock_category_id = nil
      @unit_of_measure = nil
    end
  end
end
