PostitTemplate::Application.routes.draw do
  get '/register', to: 'users#new'
  
  resources :users, only: [:create, :update, :edit, :show]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :posts, except: :destroy do
    resources :comments, only: :create
  end

  resources :categories, only: [:new, :create, :show]

  root to: 'posts#index'
end
