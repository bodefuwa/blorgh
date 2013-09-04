module Blorgh
  class Post < ActiveRecord::Base
    include Blorgh::Models::Concerns::Post
  end
end
