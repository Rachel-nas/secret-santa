Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  devise_for :users

  resources :events, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :participants
  end
end
