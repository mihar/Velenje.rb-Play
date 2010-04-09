class SessionsController < ApplicationController
  skip_before_filter :authenticate, :except => :destroy
  
  def destroy
    session[:password] = nil
    redirect_to root_path
  end

  def create
    session[:password] = params[:password]
    redirect_to root_path
  end

end
