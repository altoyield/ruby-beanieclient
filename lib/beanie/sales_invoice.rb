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
  class SalesInvoice < Api
    attr_accessor :id, :date, :due_date, :number, :is_credit_note, :local_gross, :shipping, :sub_total, :tax
    attr_accessor :tax_point, :sales_order_id, :original_invoice, :state
  
    STATE_NEW = 0
    STATE_POSTED = 1
    STATE_SENT = 2
    STATE_PAID = 3
    STATE_CANCELLED = 4
    STATE_OVERDUE1 = 5
    STATE_OVERDUE2 = 6
    STATE_OVERDUE3 = 7
    STATE_OVERDUE4 = 8
    STATE_OVERDUE5 = 9
  
    STATE_NAMES = [
      ["New (Unposted)", STATE_NEW],
      ["Posted to Journal", STATE_POSTED],
      ["Sent to Customer", STATE_SENT],
      ["Paid", STATE_PAID],
      ["Cancelled", STATE_CANCELLED],
      ["Overdue (Past 30 days)", STATE_OVERDUE1],
      ["Overdue (Past 45 days)", STATE_OVERDUE2],
      ["Overdue (Over 60 days)", STATE_OVERDUE3],
      ["Overdue (Over 90 days)", STATE_OVERDUE4],
      ["Overdue (Over 120 days)", STATE_OVERDUE5]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @date = nil
      @due_date = nil
      @number = nil
      @is_credit_note = nil
      @local_gross = nil
      @shipping = nil
      @sub_total = nil
      @tax = nil
      @tax_point = nil
      @sales_order_id = nil
      @original_invoice = nil
      @state = nil
    end
  
    #
    # Show the state in a useful format
    def state_name
      STATE_NAMES[self.state][0]
    end
  end
end
