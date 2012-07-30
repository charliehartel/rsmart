class Athlete < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  before_save { |athlete| athlete.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: { case_sensitive: false },
  					presence:   true,
  					format: 	{ with: VALID_EMAIL_REGEX }  

  validates :name, presence: true, length: { maximum: 50 }
  validates :password, presence: true, length: {minimum:6 }
  validates :password_confirmation, presence: true

  has_many :workouts, dependent: :destroy
end
