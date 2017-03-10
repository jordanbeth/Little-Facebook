Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :posts#, only: [:new, :create, :edit, :delete]

  resources :users, only: [:show, :new, :create]

  post "sessions/login", to: "sessions#create"

  get "sessions/logout", to: "sessions#destroy"

end
