class Model < ActiveRecord::Base
  # validates :image_url, :format => {:with  => %r{\.(gif|jpg|png)$}i, :message => 'must be a URL for GIF, JPG or PNG image.' }
  has_many :awards
  has_many :photos
  belongs_to :painter
  
  
end