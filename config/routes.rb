Rails.application.routes.draw do
  devise_for :users
  
  resources :users, except: :show

  root to: "dashboard#index"

  namespace :api do
    devise_for :users
    jsonapi_resources :users
  end
end
