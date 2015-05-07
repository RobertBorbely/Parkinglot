class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :plate, null: false, default: 'ABC-123'
      t.date :lastvisit
      t.integer :allvisit, default: '1'
      t.references :parkinghouse, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
