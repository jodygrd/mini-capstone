class ProductsController < ApplicationController

	def display_all_products
		@products = Produce.all
	end

	def add_product
	end

	def product_added

		name_input = params[:name]
		price_input = params[:price]
		description_input = params[:description]
		image_input = params[:image]

    @produce = Produce.create({name: name_input, price: price_input, description: description_input, image: image_input})

	end

end
