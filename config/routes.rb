Rails.application.routes.draw do
  devise_for :users
  
  resources :users, except: :show

  root to: "dashboard#index"

  namespace :api do
    jsonapi_resources :users
  end
end
