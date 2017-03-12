class ProductsController < ApplicationController

	def index
		@produce = Produce.all

	end

	def show
		produce_id = params[:id]
		@produce = Produce.find_by(id: produce_id)
  end

	def new
	end

	def create

		name_input = params[:name]
		price_input = params[:price]
		description_input = params[:description]
		image_input = params[:image]

    @produce = Produce.create({name: name_input, price: price_input, description: description_input, image: image_input})

    redirect_to "/products"


	end

	def edit
		produce_id = params[:id]
		@produce = Produce.find_by(id: produce_id)

	end

	def update
		@produce = Produce.find_by(id: params[:id])
		@produce.name = params[:name]
		@produce.price = params[:price]
		@produce.image = params[:image]
		@produce.save

		redirect_to "/products/#{@produce.id}"
	end

	def destroy
		@produce = Produce.find_by(id: params[:id])
		@produce.destroy
   
    redirect_to "/products"

	end

end
