class Goal < ActiveRecord::Base
  attr_accessible :date, :distance, :goal, :name, :athlete_id
  belongs_to :athlete 

  validates :date, presence: true
  validates :distance, presence: true
  validates :goal, presence: true
  validates :name, presence: true, length: { maximum: 100 }
  validates :athlete_id, presence: true
end
