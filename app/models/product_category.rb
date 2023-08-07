class ProductCategory < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :variants
  has_one :product_category
  belongs_to :product_category
  has_and_belongs_to_many :products
end
