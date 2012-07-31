class AddRememberTokenToAthletes < ActiveRecord::Migration
  def change
  	add_column :athletes, :remember_token, :string
    add_index  :athletes, :remember_token
  end
end
