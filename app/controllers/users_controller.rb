class UsersController < ApplicationController
	
	def new 
	
	end

	
	def create
		binding.pry
	  @user = User.new(user_params)
	  @user.authentication_token=params[:authenticity_token]
      if @user.save
      	flash[:success]  = "Signup Succesfully"
      	redirect_to  address_users_path
      else
      	flash[:error] = "Something Went Wrong"
      	redirect_to root_path 
      end
	end

	
	def buy_token
		
	end
	
	
	def profile

	end

	
	def transaction_history

	end

	
	def address
	end 

	def address_save
	  flash[:success]= "Your Address is Saved!"
      redirect_to root_path
	end

	
	def forgot_password
	   if params[:user].present?
	   user = User.find_by(:email => params[:user][:forgot_email].downcase)
	   if user.present?
	     @new_password = User.generate_password
	     UserMailer.password_forget(user, @new_password).deliver
	     if user.update(password: @new_password)
	       flash[:success]  = "Passwword Succesfully Changed"
	       redirect_to root_path 
	     else
	       flash[:error] = "Something Went Wrong"
	       redirect_to root_path
	     end
	   else
	      flash[:error] ="Email Not found"
	      redirect_to root_path
	   end
      end
    end

    
     def change_password
		   if current_user.authenticate(params[:user][:change_old_password])
		     if(params[:user][:change_new_password] == params[:user][:change_confirm_password])
		      if current_user.update(password: params[:user][:change_new_password])
		         flash[:notice] = "Password Succesfully Changed"
		         redirect_to profile_users_path
		       else
		         flash[:error]= "Something Went Wrong"
		      end
		     end
		   end
     end
   

private
  def user_params
    params.require(:user).permit(:name,:email,:password,:mobile_code,:mobile_no,:country_name)
  end	

end




