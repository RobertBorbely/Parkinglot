class Car < ActiveRecord::Base
  belongs_to :parkinghouse

  has_many(:car_images)

  accepts_nested_attributes_for :car_images, allow_destroy: true

  scope :all_car, -> {where(allvisit: 1)}
  scope :licence_true, -> {where(licence: true)}
  scope :licence_false, -> {where(licence: false)}

  def to_s
    "#{plate}"
  end

end
