class SessionsController < ApplicationController
	
	def new 
	end

	def create
		@user = User.find_by(email: params[:user][:email].downcase)
		if @user && @user.authenticate(params[:user][:password])
			log_in @user
			flash[:success]  = "Login Succesfully"	
			redirect_to root_path
		 else
		    flash[:error]  = "Something Went Wrong" 
		    redirect_to root_path	
		end
	end
    
    def logout
        log_out
        flash[:success]  = "Logout Succesfully"
        redirect_to root_path
    end
    

end
