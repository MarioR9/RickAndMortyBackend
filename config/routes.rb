Rails.application.routes.draw do
  resources :ricks
  post '/login', to: 'ricks#login'
  get '/authenticate', to: 'ricks#authenticate'
  resources :morties
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
