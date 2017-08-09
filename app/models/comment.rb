class Comment < ActiveRecord::Base
  belongs_to :article
  validates_length_of :body, :minimum => 5, :maximum => 250, :allow_blank => false
end
