class CreateLoggedActivities < ActiveRecord::Migration
  def change
    create_table :logged_activities do |t|
      t.integer :user_id
      t.integer :activity_id
      t.integer :duration
      t.text :intensity

      t.timestamps
    end
  end
end
