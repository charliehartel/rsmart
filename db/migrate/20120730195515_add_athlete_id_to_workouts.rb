class AddAthleteIdToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :athlete_id, :integer
    add_index :workouts, [:athlete_id, :created_at]
  end
end
