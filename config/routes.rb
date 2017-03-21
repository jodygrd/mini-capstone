Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Resful Routes

  root to: "products#index"
  #Index
	get "/products" => "products#index"
  get "/suppliers" => "suppliers#index"

	#New and Create
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/suppliers/new" => "suppliers#new"
  post "/suppliers" => "suppliers#create"

	#Show
	get "/products/:id" => "products#show"

	#Edit and Update
	get "/products/:id/edit" => "products#edit"
	patch "/products/:id" => "products#update"

  #Destroy
  delete "/products/:id" => "products#destroy"
  get "/discount" => "products#discount"

  #search
  post "/search" => "products#search"

end
