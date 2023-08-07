class ShoppingCart < ApplicationRecord
  has_many :shopping_cart_items
  has_many :product_items, through: :shopping_cart_items
  belongs_to :user, optional: true

  def total
    shopping_cart_items.to_a.sum(&:total)
  end
end
