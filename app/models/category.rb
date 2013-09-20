class Category < ActiveRecord::Base
  has_many :awards
  has_many :competitions, :through => :awards
end
