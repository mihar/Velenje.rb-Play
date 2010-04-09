class TracksController < ApplicationController
  before_filter :find_track, :only => [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate, :only => [:index, :show]
  
  def index
    @tracks = Track.all
  end
  
  def new
    @track = Track.new
  end
  
  def update
    redirect_to_index if @track.update_attributes params[:track]
  end
  
  def create
    @track = Track.new params[:track]
    redirect_to_index if @track.save
  end
  
  def destroy
    redirect_to_index if @track.destroy
  end
  
  protected
  
  def find_track
    @track = Track.find params[:id]
  end
  
  def redirect_to_index
    redirect_to :controller => "tracks", :action => "index"    
  end
end
