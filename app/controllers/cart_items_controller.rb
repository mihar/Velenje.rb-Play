class CartItemsController < ApplicationController
  skip_before_filter :authenticate
  
  def new
    track = Track.find params[:id]
    find_cart.add_product track
    
    redirect_to track_path(track)
  end

  def index
    @items = find_cart.items
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
