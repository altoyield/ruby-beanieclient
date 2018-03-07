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
  class NominalAccount < Api
    attr_accessor :id, :na_type, :code, :name, :nominal_account_category_id

    TYPE_FIXED_ASSETS = 0
    TYPE_CURRENT_ASSETS = 1
    TYPE_CURRENT_LIABILITIES = 2
    TYPE_NON_CURRENT_LIABILITIES = 3
    TYPE_RESERVES = 4
    TYPE_INCOME = 5
    TYPE_DIRECT_COSTS = 6
    TYPE_EXPENSE = 7
    TYPE_OTHER_EXPENSE = 8
    TYPE_OTHER_INCOME = 9
  
    TYPE_NAMES = [
      ["Fixed Assets", TYPE_FIXED_ASSETS],
      ["Current Assets", TYPE_CURRENT_ASSETS],
      ["Current Liabilities", TYPE_CURRENT_LIABILITIES],
      ["Non-Current Liabilities", TYPE_NON_CURRENT_LIABILITIES],
      ["Reserves", TYPE_RESERVES],
      ["Income", TYPE_INCOME],
      ["Direct Costs", TYPE_DIRECT_COSTS],
      ["Expense", TYPE_EXPENSE],
      ["Other Expense", TYPE_OTHER_EXPENSE],
      ["Other Income", TYPE_OTHER_INCOME]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @code = nil
      @name = nil
      @nominal_account_category_id = nil
    end
  
    #
    # Show proper name for type
    def type_name
      TYPE_NAMES[na_type][0]
    end
  end
end
