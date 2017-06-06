Rails.application.routes.draw do
  root 'bike_messages#index'
  resources :bike_messages, only: [:index]
end
