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

require 'test_helper'

class WorkoutTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
