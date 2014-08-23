class Activity < ActiveRecord::Base

  has_many :logged_activities

  validates :name, presence: true

  def to_s
    name
  end

end
