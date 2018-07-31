ActiveAdmin.register StaticContentManagement do
	permit_params :title, :description
	config.clear_action_items!

	remove_filter :created_at
	remove_filter :updated_at
    
	index do
		   
		   selectable_column
		   
		   column :title
		   column :description do |post|
             truncate(post.description,omision: "...",length: 100)
           end
		   
           
           column :actions do |i|
           links = []
           links << link_to('View', admin_static_content_management_path(i.id))
           links << link_to('Edit', edit_admin_static_content_management_path(i.id))
	     
           links.join(' ').html_safe
             
           end

		end
		 
		 show do
			  attributes_table do
			      row :title
			      row :description
			       
		      end
         end

end
