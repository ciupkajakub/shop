class Product < ApplicationRecord
  has_rich_text :description
  has_many :product_items
  has_and_belongs_to_many :product_categories

  def image_as_thumbnail
    image.variant(resize_to_limit: [300, 300]).processed
  end

  def picture_as_thumbnail(picture)
    picture.variant(resize_to_limit: [200, 200]).processed
  end
end
