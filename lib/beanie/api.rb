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
require 'active_support/inflector'

module Beanie
  class Api
    #
    # Find all the objects
    def self.all(opts = {})
      data = get(opts)
      objlist = []
      data[new.object_name.pluralize].each do |objdata|
        objlist << new.populate(objdata)
      end
      objlist
    end

    #
    # Find an object based on its ID
    def self.find(id)
      data = get(:id => id)
      obj = new
      obj.populate(data[obj.object_name])
    end

    #
    # Save the customer data
    def save!(opts = {})
      data = extract()
      data.delete("id")
      objdata = {object_name => data}
      response = self.class.post(objdata, opts)
      self.populate(response[self.object_name])
    end

    #
    # Populate the instance variables from the provided hash.
    def populate(data)
      self.instance_variables.each do |var|
        self.instance_variable_set(var, data[field_name(var)])
      end
      self
    end

    #
    # Populate the instance variables from the provided hash.
    def extract
      data = {}
      self.instance_variables.each do |var|
        data[field_name(var)] = self.instance_variable_get(var)
      end
      data
    end

    #
    # Determine the field name
    def field_name(var)
      var.to_s.gsub(/^@/, '')
    end

    #
    # Run a REST GET against the Beanie API.
    def self.get(opts = {})
      response = RestClient.get(build_url(opts), headers=set_headers)
      JSON.parse(response.body)
    end

    #
    # Run a REST PUT against the Beanie API.
    def self.put(data, opts = {})
      response = RestClient.put(build_url(opts), data, headers=set_headers)
      JSON.parse(response.body)
    end

    #
    # Run a REST POST against the Beanie API.
    def self.post(data, opts = {})
      response = RestClient.post(build_url(opts), data.to_json, headers=set_headers)
      JSON.parse(response.body)
    end

    #
    # Run a REST DELETE against the Beanie API.
    def self.delete(data, opts = {})
      response = RestClient.delete(build_url(opts), headers=set_headers)
      JSON.parse(response.body)
    end

    #
    #
    def self.build_url(opts = {})
      if opts[:url]
        url = "#{Beanie.base_uri}#{opts[:url]}"
        opts.delete(:url)
      else
        url = "#{Beanie.base_uri}/#{new.construct_path(opts)}"
      end
      if opts[:id]
        url += "/#{opts[:id]}"
        opts.delete(:id)
      end
      url += ".json"
      optstr = ""
      opts.each_key do |key|
        optstr += (optstr.length == 0) ? "?" : "&"
        optstr += "#{key.to_s}=#{opts[key]}"
      end
      url + optstr
    end

    #
    # Set the default API headers.
    def self.set_headers
      #
      # Make sure we have a token for this.
      headers = {:content_type => :json, :accept => :json}
      headers[:x_auth_token] = Beanie.get_token
      headers
    end

    #
    # Default mechanism for constructing a path
    def construct_path(opts = {})
      object_name.pluralize
    end

    #
    # Compute a Beanie object name from the class name.
    def object_name
      object_name = self.class.name.
          gsub(/.*::/, '').
          gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
          gsub(/([a-z\d])([A-Z])/,'\1_\2').
          tr("-", "_").
          downcase
    end
  end
end
