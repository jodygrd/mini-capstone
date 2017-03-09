class ProductsController < ApplicationController

	def display_all_products
		@products = Produce.all
	end

end
