class Variant < ApplicationRecord
  belongs_to :product_category
  has_and_belongs_to_many :product_item_configs
end
