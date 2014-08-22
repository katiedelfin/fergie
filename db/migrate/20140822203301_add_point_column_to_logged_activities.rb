class AddPointColumnToLoggedActivities < ActiveRecord::Migration
  def change
    add_column :logged_activities, :points, :integer
  end
end
