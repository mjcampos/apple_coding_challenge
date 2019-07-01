Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks, except: %i[show destroy]
  resources :kinds, except: %i[show destroy]
end
