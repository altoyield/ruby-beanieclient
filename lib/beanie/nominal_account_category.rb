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
  class NominalAccountCategory < Api
    attr_accessor :id, :na_type, :name, :parent_category_id

    NA_TYPE_FIXED_ASSETS = 0
    NA_TYPE_CURRENT_ASSETS = 1
    NA_TYPE_CURRENT_LIABILITIES = 2
    NA_TYPE_NON_CURRENT_LIABILITIES = 3
    NA_TYPE_RESERVES = 4
    NA_TYPE_INCOME = 5
    NA_TYPE_DIRECT_COSTS = 6
    NA_TYPE_EXPENSE = 7
    NA_TYPE_OTHER_EXPENSE = 8
    NA_TYPE_OTHER_INCOME = 9
  
    NA_TYPE_NAMES = [
      ["Fixed Assets", NA_TYPE_FIXED_ASSETS],
      ["Current Assets", NA_TYPE_CURRENT_ASSETS],
      ["Current Liabilities", NA_TYPE_CURRENT_LIABILITIES],
      ["Non-Current Liabilities", NA_TYPE_NON_CURRENT_LIABILITIES],
      ["Reserves", NA_TYPE_RESERVES],
      ["Income", NA_TYPE_INCOME],
      ["Direct Costs", NA_TYPE_DIRECT_COSTS],
      ["Expense", NA_TYPE_EXPENSE],
      ["Other Expense", NA_TYPE_OTHER_EXPENSE],
      ["Other Income", NA_TYPE_OTHER_INCOME]
    ].freeze
  
    #
    # Show proper name for type
    def na_type_name
      NA_TYPE_NAMES[na_type][0]
    end
  end
end
