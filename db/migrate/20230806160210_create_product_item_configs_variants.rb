class CreateProductItemConfigsVariants < ActiveRecord::Migration[7.0]
  def change
    create_table :product_item_configs_variants do |t|
      t.belongs_to :product_item_config, type: :uuid
      t.belongs_to :variant, type: :uuid

      t.timestamps
    end
  end
end
