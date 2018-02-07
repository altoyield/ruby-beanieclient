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
  class CustomerAddress < Api
    attr_accessor :customer_id, :id, :label, :name, :address1, :address2, :address3, :city
    attr_accessor :state_county, :zip_postcode, :country_id, :email, :phone, :website

    #
    # Initialize instance variables
    def initialize
      @id = nil
      @customer_id = nil
      @label = nil
      @name = nil
      @address1 = nil
      @address2 = nil
      @address3 = nil
      @city = nil
      @state_county = nil
      @zip_postcode = nil
      @country = nil
      @email = nil
      @phone = nil
      @website = nil
    end

    #
    # Construct the path a little differently...
    def construct_path(opts = {})
      raise ":customer_id is not defined" unless opts[:customer_id]
      path = "/customers/#{opts[:customer_id]}/customer_addresses"
      opts.delete(:customer_id)
      path
    end
  end
end
