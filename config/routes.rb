Rails.application.routes.draw do
  namespace :api do
    resources :cribs
    resources :owners
    resources :tenants
    resources :schools
  end
  root 'crib#index'
end
