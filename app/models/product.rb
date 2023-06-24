class Product < ApplicationRecord
  has_one_attached :image
  has_many_attached :pictures
  has_rich_text :description
  belongs_to :product_category
  has_many :orderables
  has_many :carts, through: :orderables

  def image_as_thumbnail
    image.variant(resize_to_limit: [300, 300]).processed
  end

  def picture_as_thumbnail(picture)
    picture.variant(resize_to_limit: [200, 200]).processed
  end
end
