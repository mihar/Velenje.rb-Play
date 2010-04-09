class Album < ActiveRecord::Base
  has_many :tracks
  belongs_to :artist
  has_and_belongs_to_many :genres, :order => "name"
  accepts_nested_attributes_for :genres
  
  def to_s
    name
  end
end
