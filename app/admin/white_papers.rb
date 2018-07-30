ActiveAdmin.register WhitePaper do
	permit_params :title,:description,:file
	menu priority: 2



	form do |f|
		   f.inputs do
		     f.input :title
		     #f.file_field :file
		     f.input :file, :as => :file,:hint => image_tag(f.object.file.url(:thumb))
		     f.input :description,:as => :ckeditor
		   end
		   f.actions
    end

    show do
	    attributes_table do
	      row :title
	      row :description
	      row :Image do
	          image_tag(white_paper.try(:file).try(:url),size: "150x150")
	    end 
      end
    end



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

end
