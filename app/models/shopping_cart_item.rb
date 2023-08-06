class ShoppingCartItem < ApplicationRecord
  belongs_to :product_item
  belongs_to :shopping_cart

  def total
    product.price * quantity
  end
end
