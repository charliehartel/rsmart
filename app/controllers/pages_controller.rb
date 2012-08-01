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

  	@workouts = [ 	current_athlete.workouts.find_by_date(@fromDate),
  				  	current_athlete.workouts.find_by_date(@fromDate + 1),
  				  	current_athlete.workouts.find_by_date(@fromDate + 2),
  				  	current_athlete.workouts.find_by_date(@fromDate + 3),
  				  	current_athlete.workouts.find_by_date(@fromDate + 4),
  					current_athlete.workouts.find_by_date(@fromDate + 5),
  					current_athlete.workouts.find_by_date(@fromDate + 6)]
  	end
end
