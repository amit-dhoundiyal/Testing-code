ActiveAdmin.register AdminUser do
    menu false
    config.clear_action_items!
    permit_params :email, :password, :password_confirmation
    


    
    index do
      selectable_column
      id_column
      column :email
      column :current_sign_in_at
      column :sign_in_count
      column :created_at
      actions
    end

    filter :email
    filter :current_sign_in_at
    filter :sign_in_count
    filter :created_at

    form do |f|
      f.inputs do
        f.input :email
        f.input :password
        f.input :password_confirmation
      end
      f.actions
    end
    
    collection_action :dashboard, :method => :get do
    
    end

    collection_action :token_details, :method => :get do
    
    end


end
