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
  class Document < Api
    attr_accessor :id, :bxref, :mime_type, :size, :src_file, :category
  
    CATEGORY_UNFILED = 0
    CATEGORY_DEBIT_CARD_EXPENSES = 1
    CATEGORY_CASH_EXPENSES = 2
    CATEGORY_PURCHASE_INVOICES = 3
    CATEGORY_SALES_INVOICES = 4
    CATEGORY_BANK_STATEMENTS = 5
    CATEGORY_CONTRACTS = 6
    CATEGORY_MISCELLANEOUS = 7
  
    CATEGORIES = [
      ["Unfiled", CATEGORY_UNFILED],
      ["Debit Card Expenses", CATEGORY_DEBIT_CARD_EXPENSES],
      ["Cash Expenses", CATEGORY_CASH_EXPENSES],
      ["Purchase Invoices", CATEGORY_PURCHASE_INVOICES],
      ["Sales Invoices", CATEGORY_SALES_INVOICES],
      ["Bank Statements", CATEGORY_BANK_STATEMENTS],
      ["Contracts", CATEGORY_CONTRACTS],
      ["Miscellaneous", CATEGORY_MISCELLANEOUS]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @bxref = nil
      @mime_type = nil
      @size = nil
      @src_file = nil
      @category = nil
    end
  
    #
    # Display a name for the document category
    def category_name
      CATEGORIES[self.category][0]
    end
  end
end
