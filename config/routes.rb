Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#index'
 
  #routes for user
  resources :users do 
    collection do
      #routes of user section
      get 'buy_token'
      get 'address'
      get 'transaction_history'
      post 'forgot_password'
      get 'profile'
      post 'change_password'
      post 'address_save'

      
    end
  end
  
  #routes of session
  resources :sessions do
      collection do 
  #custom routes of session
      get  'logout'
      post 'forgot_password'
      end
    end
  
  #routes for static_content
  resources :static_contents do

  #routes for static contents  like contact us,privacy policy etc.
    collection do
      get 'about_us'
      get 'contact'
      get 'privacy'
      get 'terms'
      get 'token'
      post 'contact_us'
    end
  end
  
  # routes for Block and Unblock
  put 'admin/users/block/:id',to: 'admin/users#block',as: 'block'
  put 'admin/users/unblock/:id',to: 'admin/users#unblock',as: 'unblock'
  




  

end
