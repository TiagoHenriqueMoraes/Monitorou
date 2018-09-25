Rails.application.routes.draw do
  devise_for :users
  
  resources :users, except: :show

  root to: "dashboard#index"


  jsonapi_resources :users
end
