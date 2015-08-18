PostitTemplate::Application.routes.draw do

  resources :posts, except: :destroy

  resources :categories, only: [:new, :create, :show]

  root to: 'posts#index'
end
