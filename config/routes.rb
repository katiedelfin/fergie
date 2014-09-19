Rails.application.routes.draw do

  root 'home#index'

  resources :logged_activities, except: [:show]
  resources :activities, except: [:show]

  namespace :api do
    resources :logged_activities, only: [:index, :create, :destroy]
    resources :activities, only: [:index]
  end

end
