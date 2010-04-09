class Artist < ActiveRecord::Base
  has_many :albums
  has_many :tracks, :through => :albums

  named_scope :band_exists, :conditions => "band IS NOT NULL AND band !=''"
  named_scope :surname_exists, :conditions => "surname IS NOT NULL AND surname != ''"
  
  def person_name    
    "#{name} #{surname}"
  end
  
  def title
    if person?
      person_name
    elsif band?
      band
    end
  end
  
  def person?
    (name? and surname?)
  end
  
  def to_s
    title
  end  
end