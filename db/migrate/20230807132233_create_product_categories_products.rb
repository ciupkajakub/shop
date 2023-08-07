class CreateProductCategoriesProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories_products do |t|
      t.belongs_to :product_category, type: :uuid
      t.belongs_to :product, type: :uuid

      t.timestamps
    end
  end
end
