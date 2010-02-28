class User < ActiveRecord::Base
  acts_as_authentic
  def approved?
    active
  end
  
end
