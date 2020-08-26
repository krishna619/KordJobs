Rails.application.routes.draw do
  resources :jobs_categories
  resources :jobs
  devise_for :users

  root 'jobs#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
