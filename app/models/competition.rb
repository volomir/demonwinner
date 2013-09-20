class Competition < ActiveRecord::Base
  has_many :awards
  has_many :categories, :through => :awards

def country_order
  case self.country
    when 'U.K.' then 1
    when 'SPAIN' then 2
    when 'FRANCE' then 3
    when 'GERMANY' then 4
    when 'ITALY' then 5
    when 'U.S.A.' then 6
    else 10
  end
end

def <=>(o) 
   # Compare competition country
   country_comparison = self.country_order <=> o.country_order
   return country_comparison unless country_comparison == 0

   # Compare competition year
   year_comparison = self.year <=> o.year
   return year_comparison unless year_comparison == 0

   # Otherwise, compare IDs
   return self.id <=> o.id
end

  
  def photo_prefix
    if city.nil? 
      lieu = '' 
    else
      lieu = city 
    end
    country.downcase + '/' + year.to_s + lieu + '/'
  end
  
  def full_name
    if city.nil? 
      lieu = '' 
    else
      lieu = city 
    end    
    country.downcase.capitalize + ' ' + year.to_s + ' (' + lieu + ')'
  end
  
  # def awards_by_category
  #   awards.group_by(&:category)
  # end
  
  # def ordered_awards (category_id)
  #   awards.where(:category_id => category_id).sort! { |a,b| a.award_order <=> b.award_order }
  # end
  
end