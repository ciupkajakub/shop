class CreateProductItemConfigs < ActiveRecord::Migration[7.0]
  def change
    create_table :product_item_configs, id: :uuid do |t|

      t.belongs_to :product_item, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
