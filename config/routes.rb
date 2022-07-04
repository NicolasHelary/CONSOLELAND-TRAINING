Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :consoles do
    resources :reservations, only: %i[index new create]
  end
  resources :reservations, only: %i[show edit update destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
