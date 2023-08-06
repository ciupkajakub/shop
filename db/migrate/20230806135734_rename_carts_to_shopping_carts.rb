class RenameCartsToShoppingCarts < ActiveRecord::Migration[7.0]
  def change
    rename_table :carts, :shopping_carts
  end
end
