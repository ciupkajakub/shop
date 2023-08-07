class UpdateReferencesInProductCategories < ActiveRecord::Migration[7.0]
  def change
    change_table :product_categories do |t|
      t.remove_references :product_category

      t.references :product_category, type: :uuid, null: true
    end
  end
end
