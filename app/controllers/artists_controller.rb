class ArtistsController < InheritedResources::Base
  skip_before_filter :authenticate, :only => [:index, :show]
end
