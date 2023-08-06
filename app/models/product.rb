class Product < ApplicationRecord
  has_rich_text :description
  belongs_to :product_category
  has_many :product_items

  def image_as_thumbnail
    image.variant(resize_to_limit: [300, 300]).processed
  end

  def picture_as_thumbnail(picture)
    picture.variant(resize_to_limit: [200, 200]).processed
  end
end
