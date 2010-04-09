ActionController::Routing::Routes.draw do |map|
  map.root :controller => :pages
  map.resources :artists, :tracks, :albums, :genres, :cart_items, :orders
  map.resource :session, :only => [:new, :create, :destroy]
  map.add_genre_to_album '/albums/:album_id/genres', :controller => :albums, :action => :add_genre
end
