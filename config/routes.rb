Rails.application.routes.draw do
  root "labs#index"
  resources :labs
  get 'about' => 'pages#about'
end
