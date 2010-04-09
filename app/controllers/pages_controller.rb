class PagesController < ApplicationController
  skip_before_filter :authenticate, :only => :index
  
  def index
    @artists = Artist.all
    @tracks = Track.all
    @albums = Album.all
  end
end
