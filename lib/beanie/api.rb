require 'active_support/inflector'

module Beanie
  class Api
    #
    # Run a REST GET against the Beanie API.
    def self.get(opts = {})
      puts "Beanie GET..."
      response = RestClient.get(build_url(opts), headers=set_headers)
      JSON.parse(response.body)
    end

    #
    # Run a REST PUT against the Beanie API.
    def self.put(data, opts = {})
      puts "Beanie PUT..."
      response = RestClient.put(build_url(opts), data, headers=set_headers)
      JSON.parse(response.body)
    end

    #
    # Run a REST POST against the Beanie API.
    def self.post(data, opts = {})
      puts "Beanie POST..."
      response = RestClient.post(build_url(opts), data, headers=set_headers)
      JSON.parse(response.body)
    end

    #
    # Run a REST DELETE against the Beanie API.
    def self.delete(data, opts = {})
      puts "Beanie DELETE..."
      response = RestClient.delete(build_url(opts), headers=set_headers)
      JSON.parse(response.body)
    end

    #
    #
    def self.build_url(opts = {})
      puts "BUILD URL. Opts:-"
      p opts
      if opts[:url]
        url = "#{Beanie.base_uri}#{opts[:url]}.json"
        opts.delete(:url)
      else
        url = "#{Beanie.base_uri}/#{new.object_name.pluralize}.json"
      end
      optstr = ""
      opts.each_key do |key|
        optstr += (optstr.length == 0) ? "?" : "&"
        optstr += "#{key.to_s}=#{opts[key]}"
      end
      url += optstr
      puts "URL: #{url}"
      url
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
    # Compute a Beanie object name from the class name.
    def object_name
      object_name = self.class.name.
          gsub(/.*::/, '').
          gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
          gsub(/([a-z\d])([A-Z])/,'\1_\2').
          tr("-", "_").
          downcase
    end

    #
    # Populate the instance variables from the provided hash.
    def populate(data, *vars)
      vars.each do |var|
        varsym = var.to_s.gsub(/^/, '@').to_sym
        self.instance_variable_set(varsym, data[var.to_s])
      end
    end
  end
end
