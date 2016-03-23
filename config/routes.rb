Rails.application.routes.draw do
  namespace :api do
  	defaults format: 'json' do
	    resources :cribs
	    resources :owners do
	    	resources :cribs
	    end
	    
	    resources :tenants
	    resources :schools
  	end
  end
  root 'crib#index'
end
