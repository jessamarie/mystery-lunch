# class OrderItemsController < ApplicationController
#
#   before_action :set_order, only: [:create, :destroy]
#
#   before_action :set_order_item, only: [:update, :destroy]
#   after_action :set_order_items, only: [:update, :destroy]
#
#   def create
#     @current_order.add_item(order_item_params)
#
#     # redirect to restaurant_profile instead?
#     if @current_order.save
#       redirect_to order_path
#     else
#       flash[:alert] = "There was a problem adding item to your cart."
#       redirect_to order_path
#     end
#   end
#
#   def destroy
#     @order_item.destroy
#     redirect_to order_path
#   end
#
#
#   # def create
#   #   puts "****************************"
#   #   puts "order_item_params:"
#   #   puts order_item_params
#   #   puts "****************************"
#   #
#   #   @order_item = @order.order_items.new(order_item_params)
#   #   # @order_item = @order.order_items.new(quantity: 1, menu_item_id: 28)
#   #   @order.save
#   #   puts "****************************"
#   #   puts @order.order_items
#   #   puts "order id:"
#   #   puts @order.id
#   #   puts @order.customer.id
#   #   puts "****************************"
#   #   session[:order_id] = @order.id
#   #   respond_to do |format|
#   #     format.json { head :ok }
#   #   end
#   # end
#
#   # def update
#   #   @order_item.update_attributes(order_item_params)
#   # end
#   #
#   # def destroy
#   #   @order_item = @order.order_items.find(params[:id])
#   #   @order_item.destroy
#   #   respond_to do |format|
#   #     format.json { head :ok }
#   #   end
#   # end
#
# private
#   def set_order_item
#     @order_item = OrderItem.find(params[:id])
#   end
#
#   def set_order_items
#     @order_items = @order.order_items
#   end
#
#   def order_item_params
#     params.require(:order_item).permit(:quantity, :menu_item_id, :order_id)
#   end
# end
