module Beanie
  class BeanieAlert < Api
    attr_accessor :id, :state, :message, :url, :member_id
  
    STATE_NEW = 0
    STATE_READ = 1
    STATE_ARCHIVED = 2
  
    STATE_NAMES = [
      ["New (Unread)", STATE_NEW],
      ["Acknowledged (Read)", STATE_READ],
      ["Archived", STATE_ARCHIVED]
    ].freeze
  
    #
    # Printable form of the state name
    def state_name
      STATE_NAMES[state][0]
    end
  
    #
    # Is this an unread message?
    def unread?
      state == STATE_NEW
    end
  end
end
