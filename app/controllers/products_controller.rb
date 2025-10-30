class ProductsController < ApplicationController
	def index 
		@products = Product.all
	end

	def create
		@products = Product.new()
		if @product.save
			redirect_to @product, notice: "Post Created Succesfully"
		else
		render new	
       end
	end

	# def new
	# 	@product = Product.new
	# end

	# def show
	# 	@product = Product.find(params[:id])
	# end

	# def update
	# 	@products = Product.update(:id)
	# end

	# def edit
	# 	@products = Product.edit(:id)
	# end

	# def destroy
	# 	@products = Product.destroy(:id)
	# end

end 

