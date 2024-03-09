Rails.application.routes.draw do
  root "labs#index", as: 'home'
  resources :labs do
    resources :comments
  end

end
