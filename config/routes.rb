Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :posts, only: [:new, :create, :edit, :delete]
  
  resources :users, only: [:show, :new, :create]

end
