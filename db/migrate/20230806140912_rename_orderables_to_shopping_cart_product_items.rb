class RenameOrderablesToShoppingCartProductItems < ActiveRecord::Migration[7.0]
  def change
    rename_table :orderables, :shopping_cart_product_items
  end
end
