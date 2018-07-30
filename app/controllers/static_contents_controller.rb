class StaticContentsController < ApplicationController
	
	def about_us

	end

	def contact
	  
	end


    
    def contact_us
      user_name = params[:user][:name]
      user_email = params[:user][:email]
      user_message = params[:user][:message]
      UserMailer.contact(user_name,user_email,user_message).deliver
      flash[:success]= "You will be contacted by Admin soon"
      redirect_to root_path
    end 
	
	def privacy

	end
	
    def terms

	end

	def token

	end

	

	
 
end
