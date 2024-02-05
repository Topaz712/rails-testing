Rails.application.routes.draw do
  get 'user/index'
  get 'user/create'
  get 'user/show'
  get 'user/update'
  get 'user/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :posts
  resources :users
  # will generate all routes for posts including POST /posts with action create

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
