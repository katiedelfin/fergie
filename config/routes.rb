Rails.application.routes.draw do

  root 'home#index'

  resources :logged_activities, except: [:show]
  resources :activities, except: [:show]

end
