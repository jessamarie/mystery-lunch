class OrdersController < ApplicationController
  before_action :authenticate_customer!

  def show
    @order = Order.find(params[:id])
    @items = @order.cart.cart_items.all
  end

  def new
    @cart = current_cart
    if @cart.cart_items.empty?
      flash[:alert] = "Your cart is empty"
      redirect_to root_path
      return
    end

    @order = Order.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order }
    end

  end

  def create
    @order = Order.new(order_params)


    @cart_items = params[:cart_items]
    puts "******************************"
    puts @order.cart.id
    puts "******************************"

    if @order.save
      session[:cart_id] = nil
      flash[:notice] = "Thank you for your order!"
      redirect_to order_path(@order)
    else
      @cart = current_cart
      render :action => "new"
    end

  end
  private

    def order_params
      params.require(:order).permit(:delivery_type, :payment_type, :customer_id, :cart_id, :cart_items)
    end
end
