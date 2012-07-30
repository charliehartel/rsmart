class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    add_column :athletes, :password_digest, :string
    add_column :athletes, :password, :string
    add_column :athletes, :password_confirmation, :string
  end
end
