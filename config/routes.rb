Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: "post#index"
end
