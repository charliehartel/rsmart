class AddMilesToWorkout < ActiveRecord::Migration
  def change
  	add_column :workouts, :miles, :integer, :default => 0
  end
end
