class SessionsController < ApplicationController

	def new

	end

	def create
	  athlete = Athlete.find_by_email(params[:session][:email])
	  if (athlete && athlete.authenticate(params[:session][:password]))
	  	sign_in athlete
	  	redirect_to athlete
	  else

	  end
	end

	def delete
		sign_out
	end

end
