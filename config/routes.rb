Rails.application.routes.draw do
  root "tasks#index"

  resources :tasks, only: %i[index]
  resources :kinds, except: %i[show destroy]
end
