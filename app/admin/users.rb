ActiveAdmin.register User,as: "User Management" do
		permit_params :name, :email, :password_digest, :mobile_code, :mobile_no, :country_name
		config.clear_action_items!
		menu priority: 1
		remove_filter   :created_at
		remove_filter   :updated_at
		remove_filter   :mobile_no
		remove_filter   :mobile_code
		remove_filter   :password_digest
		remove_filter   :country_name
		remove_filter   :authentication_token
		remove_filter   :address
		filter :is_block,label: "Active"
		filter :name,label: "User Name"
		filter :email,label: "User Email"

	
		

		actions :all 
		
        index do
		   
		   selectable_column
		   column :id, sortable: false
		   column :name, sortable: false
		   column :email, sortable: false
		   column :mobile_no, sortable: false
		   column :country_name, sortable: false

           column :actions do |i|
           links = []
           links << link_to('View', admin_user_management_path(i.id))
           # links << link_to('Edit', edit_admin_user_path(i.id))
           # links << link_to('Delete', admin_user_path(i.id),method: :delete ,data: { confirm: 'Are you sure you want to delete ?' })
	       if  i.is_block == false
	       links <<  link_to('Block' ,block_path(i.id), method: :put ,data: { confirm: 'Are you sure?' })
		   else 
		   links <<  link_to('Unblock' ,unblock_path(i.id), method: :put ,data: { confirm: 'Are you sure?' })
		   end
           links.join(' ').html_safe
             
           end

		end   

		controller do
		   def block
		       @user=User.find(params[:id])
		     if @user.update(is_block: true)
		       #@user.send_confirmation_instructions
		       redirect_to admin_root_path
		     else
		       render :admin_user
		     end
		   end

		   def unblock
		         @user=User.find(params[:id])
		     if @user.update(is_block: false)
		        # @user.send_confirmation_instructions
		         redirect_to admin_root_path
		     else
		         render :admin_user
		     end
		   end

		end


end

