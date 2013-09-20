class Painter < ActiveRecord::Base
  has_many :models
  has_many :awards, :through => :models
  
  # def full_name
  #   name + ' ' + surname
  # end
  
  # def awards_ordered_by_date
  #   awards.sort! { |a,b| b.competition.year <=> a.competition.year }
  # end
    
end