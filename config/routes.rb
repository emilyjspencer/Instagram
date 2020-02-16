Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index' # this is our homepage
    get 'signup', to: 'users#new' # get request to localhost:3000/users/new to sign up
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    get 'login', to: 'sessions#new'

  resources :posts 
  resources :users, except: [:new]

  #resources :users, except: [:login]
end
