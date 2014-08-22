class LoggedActivity < ActiveRecord::Base

  belongs_to :user
  belongs_to :activity

  before_save :calculate_points

  enum intensity: [ :low, :medium, :high ]

  private

  def calculate_points
    case intensity
    when :low
      points = duration * 1.1
    when :medium
      points = duration * 1.2
    when :high
      points = duration * 1.3
    end
  end

end
