class RemoveProductCategoryFromProducts < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.remove_references :product_category
    end
  end
end
