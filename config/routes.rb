Rails.application.routes.draw do
  root "labs#index", as: 'home'
  resources :labs
  get 'about' => 'pages#about'
end
