class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.date :date
      t.time :goal
      t.decimal :distance
      t.integer :athlete_id

      t.timestamps
    end
    add_index :goals, [:athlete_id, :created_at]
  end
end
