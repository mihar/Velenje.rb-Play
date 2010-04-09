class Track < ActiveRecord::Base
  belongs_to :album
  
  def to_s
    name
  end
end
