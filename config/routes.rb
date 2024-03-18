Rails.application.routes.draw do
  devise_for :users
resources :users, :only => [:show]
  #resources :labs
  root "labs#index", as: 'home'
  resources :labs do
    resources :comments
  end

end
