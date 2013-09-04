module Blorgh
  class Post < ActiveRecord::Base
    include Blorgh::Models::Concerns::Post
 
    def time_since_created
      Time.current - created_at
    end
 
    def summary
      "#{title} - #{(text)[0..6]}"
    end
  end
end