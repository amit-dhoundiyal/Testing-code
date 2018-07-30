module SessionsHelper
	  def log_in(user)
	  
		   # p "--------params-------#{params[:remember_me].inspect}----------"
		   if params[:user][:remember_me]
		     # session[:user_id] = user.id
		     cookies.permanent[:authentication_token] = user.authentication_token
		   else
		     # session[:user_id] = user.id      
		     cookies[:authentication_token] = user.authentication_token
		     # cookies[:auth_token] = {:value => user.auth_token, :expires => 20.minutes.from_now }
	   end
	   #session[:user_id] = user.id
	 end

	# Returns the current logged-in user (if any).
	 def current_user
		   @current_user ||= User.find_by_authentication_token(cookies[:authentication_token]) if cookies[:authentication_token]
		   
		    # p "------current_user-------#{@current_user.inspect}----"
		   if @current_user.present?
		     return @current_user
		   else
		     cookies[:authentication_token].delete if cookies[:authentication_token]
		     return nil
		   end  
	 end

	# Returns true if the user is logged in, false otherwise.
	 def logged_in?
	   !current_user.nil?
	 end

	  # Logs out the current user.
	  def log_out
		    cookies.delete(:authentication_token) if cookies[:authentication_token]
		 #   session.delete(:referer_tracking_first_req)
		 #   # session[:user_id] = nil
		 #   #session.delete(:user_id)
		    @current_user = nil if @current_user
	  end
end
