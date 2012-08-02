module PagesHelper
  def change_workout(day)
    @current_workout = current_athlete.workouts.find_by_date(day)
  end
end
