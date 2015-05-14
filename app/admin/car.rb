ActiveAdmin.register Car do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

permit_params :plate, :color, :licence, :car_images_attributes, :allvisit

  index do
    column :id
    column :plate
    column :color
    column :allvisit
    column :licence
    actions
  end

  filter :plate_cont, collection: -> { Car.All }, label: 'Plate'
  filter :color_cont, collection: -> { Car.All },label: "Color"
  filter :licence

  show do |car|
    attributes_table do
      row :id
      row :plate
      row :color
      row :allvisit
      row :licence
    end
    table_for car.car_images do |car_img|
      column :image do |cic|
        link_to cic.image.url do
          image_tag cic.image.url(:medium)
        end
      end
    end
  end

  form do |f|
    f.inputs "Adatok" do
      f.inputs :plate
      f.inputs :color, :as => :string
      f.inputs :allvisit
      f.inputs :licence
    end

    f.inputs "Képek" do
      f.has_many :car_images do |ff|
        ff.input :image, as: :file
      end
    end
    f.actions
  end
end
