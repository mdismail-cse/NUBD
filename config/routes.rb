Rails.application.routes.draw do
  resources :nubd_requests
  resources :nubd_suggestions
  resources :subjects
  resources :departments
  devise_for :users
  # get 'pages/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # config/routes.rb
  resources :departments do
    get 'subjects', on: :member
  end

  # Defines the root path route ("/")
  root "pages#home"
end
