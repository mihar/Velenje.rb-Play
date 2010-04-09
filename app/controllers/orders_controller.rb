class OrdersController < ApplicationController
  skip_before_filter :authenticate, :only => [:new, :create]
  
  def index
    @orders = Order.all
  end
  
  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new params[:order]
    @order.add_items_from_cart find_cart
    if @order.save
      destroy_cart
      redirect_to root_path
    end
  end
end