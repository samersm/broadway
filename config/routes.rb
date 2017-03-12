Rails.application.routes.draw do
  get 'reviews/edit'

  get 'reviews/new'

  get 'reviews/create'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :plays do
    resources :reviews
  end
  
  root 'plays#index'
end
