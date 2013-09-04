require "blorgh/engine"

module Blorgh
  
  module Models
    module Concerns
    end
  end
  
  mattr_accessor :author_class
  
  def self.author_class
    @@author_class.constantize
  end
  
end

require 'blorgh/models/concerns/post'
