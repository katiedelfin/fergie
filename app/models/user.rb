class User < ActiveRecord::Base

  has_many :logged_activities, dependent: :destroy

end
