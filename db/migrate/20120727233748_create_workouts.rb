class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :summary
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end
