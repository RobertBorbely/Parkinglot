class Parkinghouse < ActiveRecord::Base
	has_attached_file :image, styles: {thumbnail: "100x100", medium: "500x500"}

	has_many :cars
	has_many :comments

	validates_attachment_content_type(:image, content_type: ['image/jpeg', 'image/png'])
end
