Rails.application.routes.draw do
  resources :images do
    resources :comments, only: [:create]
  end
  
  resources :posts do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'posts#index'
end
