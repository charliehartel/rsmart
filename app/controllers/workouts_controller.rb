class WorkoutsController < ApplicationController
  def index
  	@workouts = Workout.all
  end

  def new
  	@workout = Workout.new
  end
  
  def show
  	@workout = Workout.find(params[:id])
  end

  def edit
  	@workout = Workout.find(params[:id])
  end

  def update
  	@workout = Workout.find(params[:id])
  	@workout.update_attributes(params[:workout])
  	redirect_to @workout
  end

  def destroy
  	Workout.find(params[:id]).destroy
  end
end
