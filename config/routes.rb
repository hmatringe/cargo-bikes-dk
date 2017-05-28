Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :bikes, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:create, :update]
  end

  resources :brand_models, only: [:index]

  get "/dashboard", to: 'dashboard#index'
  root to: 'pages#home'

  mount Attachinary::Engine => "/attachinary"

end
