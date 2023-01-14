Rails.application.routes.draw do
  # new routes for devise users from gem
  devise_for :users
  # after testing and sign out route wouldn't work need to ass get method for sign out
  # found solution on stack overflow
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # resources for routes in to do list
  resources :todos
  # resources for routes in contacts
  resources :contacts
  # get 'home/index'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
