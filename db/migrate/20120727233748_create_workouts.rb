class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :summary
      t.string :description
      t.date :date
      t.integer :athlete_id

      t.timestamps
    end
    add_index :workouts, [:athlete_id, :created_at]
  end
end
