class AlbumsController < ApplicationController
  before_filter :find_album, :only => [:show, :edit, :update, :destroy]
  before_filter :find_genres, :only => [:edit, :new]
  skip_before_filter :authenticate, :only => [:index, :show]
  
  def index
    @albums = Album.all
  end
  
  def new
    @album = Album.new
  end
  
  def update
    params[:album][:genre_ids] ||= []
    redirect_to_index if @album.update_attributes params[:album]
  end
  
  def create
    @album = Album.new params[:album]
    redirect_to_index if @album.save
  end
  
  def destroy
    redirect_to_index if @album.destroy
  end
  
  protected
  
  def find_album
    @album = Album.find params[:id]
  end
  
  def find_genres
    @genres = Genre.all
  end
  
  def redirect_to_index
    redirect_to :controller => "albums", :action => "index"    
  end
end
