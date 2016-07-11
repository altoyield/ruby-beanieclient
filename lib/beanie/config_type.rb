module Beanie
  class ConfigType < Api
    attr_accessor :id, :defvalue, :description, :name, :regexp, :tag, :typecode
  
    TYPE_BOOLEAN = 0
    TYPE_INTEGER = 1
    TYPE_STRING = 2
  
    TYPE_NAMES = [
      ["Boolean", TYPE_BOOLEAN],
      ["Integer", TYPE_INTEGER],
      ["String", TYPE_STRING]
    ].freeze
  
    #
    # Give me a useful name for the state
    def typecode_name
      TYPE_NAMES[typecode][0]
    end
  end
end
