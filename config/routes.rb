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
      root 'devise/sessions#new', as: :unauthenticated_root
    end
    resources :users do

    end
  end

# resources :users, :only => [:show]
  #resources :labs
  # root "labs#index", as: 'home'
  resources :labs do
    resources :comments
  end

  root 'labs#index'
  # end
end
