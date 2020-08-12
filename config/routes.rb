Rails.application.routes.draw do
  resources :checkouts
  resources :books
  resources :users
  
  get '/', to: "users#home"
  get '/about', to: "users#about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
