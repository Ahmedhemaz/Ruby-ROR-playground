Rails.application.routes.draw do
  root 'articles#index'
  resources :posts
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
