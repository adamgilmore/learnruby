class OrdersController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@order = @product.orders.create(order_params)

		redirect_to product_path(@product)
	end

	def destroy
		@product = Product.find(params[:product_id])
		@order = @product.orders.find(params[:id])
		@order.destroy

		redirect_to product_path(@product)

	end

	private
		def order_params
			params.require(:order).permit(:customer, :count)
		end
end
