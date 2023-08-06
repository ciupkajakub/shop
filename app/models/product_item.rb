class ProductItem < ApplicationRecord
  has_one_attached :image
  has_many_attached :pictures
  has_many :shopping_cart_items
  has_many :shopping_carts, through: :shopping_cart_items
  has_one :product_item_config
  belongs_to :product
end
