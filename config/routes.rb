Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #root to: "home#index"

  root 'home#index'
  resources :users, only: [:new, :create]  # Assuming signup functionality
  get '/login' => 'sessions#new', as: 'login'  # Example login route
  get '/about_us' => 'pages#about', as: 'about_us'  # Example about us route

  get '/grocery_list', to: 'groceries#index', as: 'grocery_list'

end
