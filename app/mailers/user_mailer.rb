class UserMailer < ApplicationMailer
	
	def password_forget user, password
	   @user = user
	   @user_email = user.email
	   @password = password
	   mail(to: @user_email, subject: "Create-Etherium-New password")
	 end
    
    def contact user_name, user_email , user_message
       @user_name = user_name
       @user_email = user_email
       @user_message = user_message
       mail(from: @user_email,to: EMAIL, subject: "Create-Etherium-Contact Us")
       
    end

end
