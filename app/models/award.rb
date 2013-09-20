class Award < ActiveRecord::Base
  belongs_to :model
  belongs_to :competition
  belongs_to :category

  def award_type_order
    case self.award_type
      when "Gold" then 1
      when "Silver" then 2
      when "Bronze" then 3
      when "Finalist" then 4
      when "Special" then 5
      else 10
    end
  end

  def <=>(o) 
   # Compare award category
   award_category_comparison = self.category_id <=> o.category_id
   return award_category_comparison unless award_category_comparison == 0

   # Compare award type
   award_type_comparison = self.award_type_order <=> o.award_type_order
   return award_type_comparison unless award_type_comparison == 0

   # Otherwise, compare IDs
   return self.id <=> o.id
  end
   
  # AWARD_IMAGES = { "Gold" => "goldendemon.jpg", "Silver"  => "silverdemon.jpg", "Bronze" => "bronzedemon.jpg", "Finalist" => 4, "Special" => 5  }
  

  # def full_name
  #   category.name + ' ' + award_type
  # end
  
  # def full_name_with_competition
  #   competition.full_name + ': ' + category.name + ' ' + award_type
  # end
  
  # def award_image
  #   AWARD_IMAGES[award_type]
  # end
  
end