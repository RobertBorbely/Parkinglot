ActiveAdmin.register Parkinghouse do

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

  permit_params :id, :name, :address, :description, :image


 index do
   column :id
   column :name
   column :address
   column :description
   column :image_file_name
   actions
 end

  filter :name_cont, label: 'Name'
  filter :address_cont, label: 'Address'
  filter :description_cont, label: 'Description'
  filter :cars
  filter :comments

  show do |parkinghouse|
    attributes_table do
      row :id
      row :name
      row :address
      row :description
      row :image do
        link_to parkinghouse.image.url do
          image_tag parkinghouse.image.url(:medium)
        end
      end
    end
  end

  form do |f|
    f.inputs "Adatok" do
      f.inputs :name
      f.inputs :address
      f.inputs :description
    end

    f.inputs "Képek" do
      f.inputs :image, as: :file
    end
    f.actions
  end

end
