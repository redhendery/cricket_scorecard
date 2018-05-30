Rails.application.routes.draw do
  root 'static_pages#home'

# Static Page Routes
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'

  resources :users

end
