class LoggedActivity < ActiveRecord::Base

  enum intensity: { :low => 0, :medium => 50, :high => 100 }

  INTENSITY_MULTIPLIER = {
    low:    1.1,
    medium: 1.2,
    high:   1.3
  }.freeze

  belongs_to :user
  belongs_to :activity

  before_save :calculate_points

  private

  def calculate_points
    self.points = duration * INTENSITY_MULTIPLIER[intensity.to_sym]
  end

end
