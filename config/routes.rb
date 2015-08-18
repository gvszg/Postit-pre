PostitTemplate::Application.routes.draw do

  resources :posts, except: :destroy do
    resources :comments, only: :create
  end

  resources :categories, only: [:new, :create, :show]

  root to: 'posts#index'
end
