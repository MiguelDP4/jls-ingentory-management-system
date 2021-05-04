class CreateCoreProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :core_products do |t|
      t.string :core_number
      t.string :internal_title
      t.string :vendor
      t.string :vendor_title
      t.string :vendor_sku
      t.string :backup_vendor
      t.string :backup_vendor_sku
      t.string :restockable
      t.string :vendor_order_unit
      t.integer :vendor_case_pack
      t.integer :moq
      t.integer :buffer_days
      t.integer :minimum_level
      t.string :product_url
      t.string :note_for_next_order
      t.integer :case_pack
      t.integer :pieces_per_internal_box
      t.integer :boxes_per_case
      t.string :tags_and_info
      t.string :tag_one
      t.string :tag_two
      t.string :tag_three
      t.string :tag_four
      t.string :hazmat
      t.string :active
      t.datetime :ignore_until
      t.string :notes

      t.timestamps
    end
  end
end
