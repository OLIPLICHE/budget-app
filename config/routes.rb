Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root "users#home"
  end

  root "groups#index", as: "entity"

  resources :groups, only: [:new, :show, :create] do
    resources :entities, only: [:new, :show, :create]
  end
end
