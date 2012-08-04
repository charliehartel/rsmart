module SessionsHelper

	def sign_in(athlete)
		cookies.permanent[:remember_token] = athlete.remember_token
		self.current_athlete = athlete
	end

	def current_athlete=(athlete)
		@current_athlete = athlete
	end

	def signed_in?
		!current_athlete.nil?
	end

	def current_athlete
		@current_athlete ||= Athlete.find_by_remember_token(cookies[:remember_token])
	end
	
	def current_athlete?(athlete)
    	athlete == current_athlete
  	end
	
	def sign_out
    	self.current_athlete = nil
    	cookies.delete(:remember_token)
    	redirect_to root_path
  	end
  	def store_location
    	session[:return_to] = request.fullpath
  	end
end
