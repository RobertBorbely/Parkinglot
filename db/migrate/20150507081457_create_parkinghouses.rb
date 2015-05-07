class CreateParkinghouses < ActiveRecord::Migration
  def change
    create_table :parkinghouses do |t|
      t.string :name, null: false, default: ''
      t.string :address
      t.text :description
      t.attachment :image

      t.timestamps null: false
    end
  end
end
