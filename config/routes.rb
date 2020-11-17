Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :hotels, only: [:index, :show] do
    resources :room_categories, only: [:index]
    resources :rooms, only: [:index]
  end
end
