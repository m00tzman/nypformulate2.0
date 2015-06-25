Rails.application.routes.draw do

	resources :shipments do
		resources 'skids'
		resources 'forms'
	end
	
root 'shipments#index'

end
