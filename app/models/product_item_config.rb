class ProductItemConfig < ApplicationRecord
  belongs_to :product_item
  has_and_belongs_to_many :variants
end
