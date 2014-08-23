class Activity < ActiveRecord::Base

  has_many :logged_activities, dependent: :restrict_with_error

  validates :name, presence: true

  def to_s
    name
  end

end
