class AthletesController < ApplicationController
  def new
  	@athlete = Athlete.new
  end

  def index
  	@athletes = Athlete.all
  end

  def show
  	@athlete = Athlete.find(params[:id])
  end

  def edit
  	@athlete = Athlete.find(params[:id])
  end

  def update
  	@athlete = Athlete.find(params[:id])
  	@athlete.update_attributes(params[:athlete])
  	redirect_to @athlete
  end

  def create
  	@athlete = Athlete.new(params[:athlete])
  	if @athlete.save
      sign_in @athlete
  	  redirect_to @athlete
    else
      render 'new'
    end
  end

  def destroy
  	Athlete.find(params[:id]).destroy
  	redirect_to athletes_path
  end
end
