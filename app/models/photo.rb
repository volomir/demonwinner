class Photo < ActiveRecord::Base

  belongs_to :model
  # validates :file, :format => {:with  => %r{\.(gif|jpg|png)$}i, :message => 'must be a URL for GIF, JPG or PNG image.' }
  
  PHOTO_REPOSITORY_PATH = ""
  
  def path
    PHOTO_REPOSITORY_PATH + model.awards.first.competition.photo_prefix + file
  end
  
  
end
