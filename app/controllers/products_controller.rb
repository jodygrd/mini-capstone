class ProductsController < ApplicationController

	def index

		sort = params[:sort]
		sort_order = params[:sort_order]
		discount = params[:discount]

		
		if discount
	  	@products = Produce.where("price < ?", 4)
	  elsif sort && sort_order
			# @products = Produce.all.order(sort)
			@products = Produce.all.order(sort => sort_order)
		else 
			@products = Produce.all
		end 


	end

	def show
	  if params[:id] == "random"
	  	@produce = Produce.all.sample
	  else
			produce_id = params[:id]
			@produce = Produce.find_by(id: produce_id)
		end
  end

	def new
	end

	def create

		name_input = params[:name]
		price_input = params[:price]
		description_input = params[:description]
		image_input = params[:image]

    @produce = Produce.create({name: name_input, price: price_input, description: description_input, image: image_input})

    flash[:success] = "New Product Created!"
    redirect_to "/products/#{@produce.id}"


	end

	def edit
		produce_id = params[:id]
		@produce = Produce.find_by(id: produce_id)

	end

	def update
		@produce = Produce.find(params[:id])

		@produce.update({name: params[:name], price: params[:price], image: params[:image], description: params[:description]})

		flash[:success] = "Product updated!"
		redirect_to "/products/#{@produce.id}"
	end

	def destroy
		produce = Produce.find_by(id: params[:id])
		produce.destroy
   
    flash[:danger] = "Product deleted!"
    redirect_to "/products"
	end

	def discount

		@discount = Produce.where("price < ?", 4)

	end


	def search 
		search_term = params[:search_term]
		@product = Produce.where("name ILIKE ?", "%#{search_term}%")
		render :index
	end

end
