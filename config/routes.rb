Rails.application.routes.draw do
  devise_for :users
  root 'calc#input', as: 'user'
  get 'calc/output'
  get 'persons/profile'
  #get '/users/sign_out' => 'devise/sessions#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
end
