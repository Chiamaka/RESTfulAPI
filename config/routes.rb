Rails.application.routes.draw do
  namespace :api do
  	defaults format: 'json' do
	    resources :cribs
	    resources :owners
	    resources :tenants
	    resources :schools
  	end
  end
  root 'crib#index'
end
