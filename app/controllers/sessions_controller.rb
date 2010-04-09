class SessionsController < ApplicationController
  skip_before_filter :authenticate, :except => :destroy
  
  def destroy
    session[:password] = nil
    redirect_to root_path
  end

  def create
    session[:password] = params[:password]
    if session[:go_back]
      session[:go_back] = nil
      redirect_to session[:go_back]
    else
      redirect_to root_path
    end
  end

end
