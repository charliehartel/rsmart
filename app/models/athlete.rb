class Athlete < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  has_many :workouts, dependent: :destroy
end
