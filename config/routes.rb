Rails.application.routes.draw do

	get "/display_all_products" => "products#display_all_products"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/add_product" => "products#add_product"
  post "/product_added" => "products#product_added"



end
