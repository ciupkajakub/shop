class ProductCategory < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :variants
  has_one :product_category
  belongs_to :product_category
end
