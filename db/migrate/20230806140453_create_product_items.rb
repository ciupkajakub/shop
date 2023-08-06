class CreateProductItems < ActiveRecord::Migration[7.0]
  def change
    create_table :product_items,  id: :uuid  do |t|
      t.string :sku
      t.integer :qty_in_stock
      t.integer :price
      t.boolean :is_default
      t.string :type
      t.timestamps

      t.references :product_item, type: :uuid, null: true
      t.references :product, type: :uuid, null: true
    end
  end
end
