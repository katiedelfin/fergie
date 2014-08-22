class Activity < ActiveRecord::Base

  has_many :logged_activities

  def to_s
    name
  end

end
