class Genre < ActiveRecord::Base
  has_and_belongs_to_many :albums
  
  def to_s
    name
  end
end
