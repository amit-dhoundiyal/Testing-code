ActiveAdmin.register StaticContentManagement do
	permit_params :title, :description

	remove_filter :created_at
	remove_filter :updated_at

end
