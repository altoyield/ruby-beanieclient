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
  class VatRecord < Api
    attr_accessor :id, :amount, :record_type, :vat_return_id, :sales_tax_rate
  
    TYPE_SALES = 0
    TYPE_PURCHASES = 1
    TYPE_GOODS_FROM = 2
    TYPE_GOODS_TO = 3
    TYPE_SERVICES_FROM = 4
    TYPE_SERVICES_TO = 5
  
    TYPE_NAMES = [
      ["Sales", TYPE_SALES],
      ["Purchases", TYPE_PURCHASES],
      ["Goods From", TYPE_GOODS_FROM],
      ["Goods To", TYPE_GOODS_TO],
      ["Services From", TYPE_SERVICES_FROM],
      ["Services To", TYPE_SERVICES_TO]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @amount = nil
      @record_type = nil
      @vat_return_id = nil
      @sales_tax_rate = nil
    end
  
    #
    # Conver the record type into a string
    def record_type_name
      TYPE_NAMES[self.record_type][0]
    end
  end
end
