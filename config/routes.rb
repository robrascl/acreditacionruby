Rails.application.routes.draw do
  get 'home/index'
  get 'home/term'
  get 'home/about'
  resources :maintenances
  resources :engines
  resources :home
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
