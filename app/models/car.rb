class Car < ActiveRecord::Base
  acts_as_commentable
  
  belongs_to :model
  has_many :report
end
