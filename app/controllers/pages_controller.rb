class PagesController < ApplicationController
  def home
  	if !current_athlete.nil?
  	  redirect_to schedule_path
  	end
  end

  def schedule
  	@totalMiles = 0
  	current_athlete.workouts.select do | w |
  		@totalMiles += w.miles
  	end

  	@fromDate = Date.today - Date.today.wday + 1
  	@toDate = @fromDate + 6

  	@workouts = current_athlete.current_schedule
    if @current_workout.nil? 
      @current_workout = current_athlete.workouts.find_by_date(Date.today)
  	end
  end 
end
