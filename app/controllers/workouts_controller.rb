class WorkoutsController < ApplicationController
  def index
  	@workouts = Workout.all
  	@athletes = Athlete.all
  end

  def new
  	@workout = Workout.new
  	@athletes = Athlete.all
  end
  
  def show
  	@workout = Workout.find(params[:id])
  	@athlete = Athlete.find(@workout.athlete_id)
  end

  def edit
  	@workout = Workout.find(params[:id])
  	@athletes = Athlete.all
  end

  def update
  	@workout = Workout.find(params[:id])
  	@workout.update_attributes(params[:workout])
  	redirect_to @workout
  end

  def create
  	@workout = Workout.new(params[:workout])
  	@workout.save
  	redirect_to @workout
  end

  def destroy
  	Workout.find(params[:id]).destroy
  end
end
