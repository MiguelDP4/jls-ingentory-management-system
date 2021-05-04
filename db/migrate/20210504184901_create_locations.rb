class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :warehouse
      t.string :location
      t.integer :quantity
      t.references :core_product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
