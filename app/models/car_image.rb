class CarImage < ActiveRecord::Base
  belongs_to (:car)

  has_attached_file :image, styles: {thumbnail: "100x100", medium: "500x500"}

  validates_attachment_content_type(:image, content_type: ['image/jpeg', 'image/png'])
end
