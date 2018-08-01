ActiveAdmin.register Payment do
	config.clear_action_items!
    menu priority: 3
    config.filters = false
  
	#remove_filter :updated_at
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
        index do
		   
		   selectable_column
		   column :transaction_id
		   column :amount
		   column :tokens
		   column :transaction_status

     #       column :actions do |i|
     #       links = []
     #       links << link_to('View', admin_user_path(i.id))
     #       links << link_to('Edit', edit_admin_user_path(i.id))
     #       links << link_to('Delete', admin_user_path(i.id),method: :delete ,data: { confirm: 'Are you sure you want to delete ?' })
	    #    if  i.is_block == false
	    #    links <<  link_to('Block' ,block_path(i.id), method: :put ,data: { confirm: 'Are you sure?' })
		   # else 
		   # links <<  link_to('Unblock' ,unblock_path(i.id), method: :put ,data: { confirm: 'Are you sure?' })
		   # end
     #       links.join(' ').html_safe
             
     #       end

		end

end
