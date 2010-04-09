class ApplicationController < ActionController::Base
  helper :all
  helper_method :admin?, :find_cart
  protect_from_forgery
  before_filter :authenticate
  
  def admin?
    (session[:password] == "play")
  end
  
  def find_cart
    session[:cart] ||= Cart.new
  end
  
  def destroy_cart
    session[:cart] = nil
  end
  
  protected
  
  def authenticate
    unless admin?
      session[:back_to] = request.url
      redirect_to new_session_path
    end
  end
end
