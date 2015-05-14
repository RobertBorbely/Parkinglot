class Car < ActiveRecord::Base
  belongs_to :parkinghouse

  has_many(:car_images)

  accepts_nested_attributes_for :car_images, allow_destroy: true

  def to_s
    "#{plate}"
  end

end
