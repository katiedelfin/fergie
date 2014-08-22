class User < ActiveRecord::Base

  has_many :logged_activities

end
