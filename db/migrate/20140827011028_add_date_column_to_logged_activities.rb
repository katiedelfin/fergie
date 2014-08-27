class AddDateColumnToLoggedActivities < ActiveRecord::Migration
  def change
    add_column :logged_activities, :date, :date
  end
end
