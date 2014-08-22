class ChangeIntensityColumnToInteger < ActiveRecord::Migration
  def change
    change_column :logged_activities, :intensity, 'integer USING CAST(intensity AS integer)'
  end
end
