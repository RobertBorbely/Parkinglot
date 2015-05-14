class AddColorAndLicenceToCar < ActiveRecord::Migration
  def change
    add_column :cars, :color, :string
    add_column :cars, :licence, :boolean
  end
end
