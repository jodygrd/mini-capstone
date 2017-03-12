Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Resful Routes

  #Index
	get "/products" => "products#index"
	post "/products" => "products#create"

	#New and Create
  get "/products/new" => "products#new"
  post "/products" => "products#create"

	#Show
	get "/products/:id" => "products#show"

	#Edit and Update
	get "/products/:id/edit" => "products#edit"
	patch "/products/:id" => "products#update"

  #Destroy
  delete "/products/:id" => "products#destroy"


end
