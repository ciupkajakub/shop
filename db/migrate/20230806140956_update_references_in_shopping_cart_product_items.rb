class UpdateReferencesInShoppingCartProductItems < ActiveRecord::Migration[7.0]
  def change
    change_table :shopping_cart_product_items do |t|
      t.remove_references :product
      t.remove_references :cart

      t.references :product_item, type: :uuid
      t.references :shopping_cart, type: :uuid
    end
  end
end
