Rails.application.routes.draw do
  resources :labs
  root "labs#index", as: 'home'
  resources :labs do
    resources :comments
  end

end
