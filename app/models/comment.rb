class Comment < ActiveRecord::Base
  acts_as_commentable
  
  belongs_to :car
  has_many :comment_pictures
end
