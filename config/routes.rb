Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "splash#index"

  resources :splash, only: %i[index]
  resources :users, only: %i[index show] do

    resources :groups do
      resources :entities
   end 
  end
end
