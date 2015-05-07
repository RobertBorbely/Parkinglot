class CreateCarImages < ActiveRecord::Migration
  def change
    create_table :car_images do |t|
      t.attachment :image
      t.references :car, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
