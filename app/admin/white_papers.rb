ActiveAdmin.register WhitePaper do 
	permit_params :title,:description,:file
	menu priority: 5
	config.filters = false
	



	form do |f|
		   f.inputs do
		     f.input :title
		     #f.file_field :file
		     f.input :file, :as => :file
		     f.input :description,:as => :ckeditor
		   end
		   f.actions
    end

    show do
	    attributes_table do
	      row :title
	      row :description
	      row :Image do
	          image_tag(white_paper.try(:file).try(:url),size: "250x250")
	    end 
      end
    end
    

    index do
    	selectable_column
		   column :id, sortable: false
		   column :title, sortable: false
		   column :description, sortable: false
		  
		   
		column :actions do |i|
		           links = []
		           links << link_to('View', admin_white_paper_path(i.id))
		           links << link_to('Edit',edit_admin_white_paper_path(i.id))
		           links << link_to('Delete', admin_white_paper_path(i.id),method: :delete ,data: { confirm: 'Are you sure you want to delete ?' })
		           links.join(' ').html_safe
		             
		          

		end
	end

end
