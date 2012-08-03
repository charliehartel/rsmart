class GoalsController < ApplicationController
	def index
		@goals = Goal.all
	end

	def edit
		@goal = Goal.find(params[:id])
	end

	def show
		@goal = Goal.find(params[:id])
	end

	def new 
		@goal = Goal.new
	end

	def create
		params[:goal][:athlete_id] = current_athlete.id
		@goal = Goal.new(params[:goal])
		@goal.save
		redirect_to schedule_path
	end
end
