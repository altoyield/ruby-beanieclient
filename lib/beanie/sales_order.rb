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
  class SalesOrder < Api
    attr_accessor :id, :cash_customer_ref, :number, :date, :title, :billing_frequency
    attr_accessor :your_ref, :currency_id, :customer_id

    BILL_FREQUENCY_DAILY = 0
    BILL_FREQUENCY_WEEKLY = 1
    BILL_FREQUENCY_FORTNIGHTLY = 2
    BILL_FREQUENCY_MONTHLY = 3
    BILL_FREQUENCY_QUARTERLY = 4
    BILL_FREQUENCY_ANNUALLY = 5

    BILL_FREQUENCY_NAMES = [
      ["Daily", BILL_FREQUENCY_DAILY],
      ["Weekly", BILL_FREQUENCY_WEEKLY],
      ["Fortnightly", BILL_FREQUENCY_FORTNIGHTLY],
      ["Monthly", BILL_FREQUENCY_MONTHLY],
      ["Quarterly", BILL_FREQUENCY_QUARTERLY],
      ["Yearly", BILL_FREQUENCY_ANNUALLY]
    ].freeze

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @cash_customer_ref = nil
      @number = nil
      @date = nil
      @title = nil
      @billing_frequency = BILL_FREQUENCY_DAILY
      @your_ref = nil
      @currency = nil
      @customer_id = nil
    end
  
    #
    # Pretty name for the frequency
    def frequency_name
      BILL_FREQUENCY_NAMES.each do |fn|
        return fn[0] if fn[1] == self.billing_frequency
      end
      return "Unknown?"
    end
  end
end
