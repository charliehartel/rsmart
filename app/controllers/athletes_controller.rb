class AthletesController < ApplicationController
  before_filter :signed_in_athlete, only: [:index, :edit, :update, :destroy]
  before_filter :correct_athlete,      only: [:edit, :update]
 
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
  	if @athlete.update_attributes(params[:athlete])
      flash[:success] = "Settings Saved!"
      sign_in @athlete
  	  redirect_to @athlete
    else
      render 'edit'
    end
  end

  def create
  	@athlete = Athlete.new(params[:athlete])
  	if @athlete.save
      flash[:success] = "Welcome to the Sample App!"
      sign_in @athlete
  	  redirect_to @athlete
    else
      render 'new'
    end
  end

  def destroy
  	Athlete.find(params[:id]).destroy
    flash[:success] = "User destroyed."
  	redirect_to athletes_path
  end

  private

  def signed_in_athlete
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Please sign in." unless signed_in?
    end
  end

  def correct_athlete
    @Athlete = Athlete.find(params[:id])
    redirect_to(root_path) unless current_athlete?(@Athlete)
  end

end
