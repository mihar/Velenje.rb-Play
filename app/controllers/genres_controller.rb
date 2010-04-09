class GenresController < ApplicationController
  before_filter :find_genre, :only => [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate, :only => [:index, :show]

  def index
    @genres = Genre.all
  end
  
  def new
    @genre = Genre.new
  end
  
  def update
    redirect_to_index if @genre.update_attributes params[:genre]
  end
  
  def create
    @genre = Genre.new params[:genre]
    redirect_to_index if @genre.save
  end
  
  def destroy
    redirect_to_index if @genre.destroy
  end
  
  protected
  
  def find_genre
    @genre = Genre.find params[:id]
  end
  
  def redirect_to_index
    redirect_to :controller => "genres", :action => "index"    
  end

end