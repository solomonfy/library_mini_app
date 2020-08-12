Rails.application.routes.draw do
  resources :checkouts
  resources :books
  resources :users
  
  get '/', "users#home"
  get '/about', "users#about"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
