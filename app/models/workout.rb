# == Schema Information
#
# Table name: workouts
#
#  id          :integer         not null, primary key
#  summary     :string(255)
#  description :string(255)
#  date        :date
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Workout < ActiveRecord::Base
  attr_accessible :date, :description, :summary

  validates :description, presence: true, length: {maximum: 20}
  validates :summary, presence: true, length: {maximum: 200}
  validates :date, presence: true
end
