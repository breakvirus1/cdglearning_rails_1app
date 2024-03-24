Rails.application.routes.draw do
  # devise_for :users, skip: [:sessions]

  # devise_scope :user do

  devise_for :users do
    as :user do
      get 'signin', to: 'devise/sessions#new', as: :new_user_session
      post 'signin', to: 'devise/sessions#create', as: :user_session
      delete 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session
    end
    authenticated :user do
      root 'labs#index', as: :authenticated_root

    end
    unauthenticated do
      puts("NOT AUTH")
      # root 'devise/sessions#create', as: :new_user_registration
      root 'new_user_registration#new', as: :unauthenticated_root
    end
  end

  # devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "/" }


  resources :labs do
    resources :comments
  end

  root 'labs#index'
  # end
end
