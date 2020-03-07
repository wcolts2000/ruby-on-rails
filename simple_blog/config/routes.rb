Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'

  #creates all the crud routes for specified controller
  resources :posts


end
