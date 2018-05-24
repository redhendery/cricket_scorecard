Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages#home'

# Static Page Routes
  get '/about', to: 'static_pages#about'
  get '/help', to: 'static_pages#help'
  get 'signup', to: 'users#new'
end
