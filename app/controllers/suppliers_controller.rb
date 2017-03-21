class SuppliersController < ApplicationController

	def index
		@suppliers = Supplier.all
	end

	def new
	end

	def create
		@supplier = Supplier.create({name:params[:name], email:params[:email], phone:params[:phone]})
		redirect_to "/suppliers"
	end

end
