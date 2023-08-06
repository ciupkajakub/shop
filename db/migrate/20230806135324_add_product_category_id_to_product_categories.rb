class AddProductCategoryIdToProductCategories < ActiveRecord::Migration[7.0]
  def change
    change_table :product_categories do |t|
      t.references :product_category, type: :uuid
    end
  end
end
