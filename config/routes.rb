Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources for users unders customers and sharpeners (afiladors)
  resources :customers
  resources :afiladors

  resources :afiladors, only: [:index, :new, :create, :edit, :update] do
    resources :bookings, only: [:index, :new, :create, :show, :destroy]
  end
  resources :customers, only: [:index, :new, :create, :edit, :update] do
    resources :bookings, only: [:index, :new, :create, :show, :destroy]
  end

  resources :bookings do
    resources :review, only: [:create, :destroy]
  end

  resources :bookings, only: [:create, :destroy]
end
