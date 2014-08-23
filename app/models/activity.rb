class Activity < ActiveRecord::Base

  has_many :logged_activities, dependent: :restrict_with_error

  validates :name, presence: true, uniqueness: true

  before_validation :titlecase_name

  def to_s
    name
  end

  private

  def titlecase_name
    self.name = self.name.titlecase
  end

end
