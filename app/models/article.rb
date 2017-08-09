class Article < ActiveRecord::Base
  validates_length_of :body, :minimum => 20, :allow_blank => false
  validates_length_of :title, :minimum => 5, :allow_blank => false
end
