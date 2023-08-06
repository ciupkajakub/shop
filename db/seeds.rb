# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
_admin = Admin.create(
  first_name: 'John',
  last_name: 'Wick',
  email: 'john@wick.com',
  password: 'test123',
  otp_required_for_login: true,
  otp_secret: Admin.generate_otp_secret
)

clothing_category = ProductCategory.create(name: 'CLOTHING')
men_product_category = ProductCategory.create(name: 'MEN', product_category_id: clothing_category.id)
hoodie_category = ProductCategory.create(name: 'HOODIES', product_category_id: men_product_category.id)
product = Product.create(name: 'Hoodie v100', description: '100% cotton', product_category_id: hoodie_category.id)
product_item = ProductItem.create(
  sku: 'random_string',
  qty_in_stock: 10,
  price: 20_000,
  is_default: true,
  product_id: product.id
)
product_item_config = ProductItemConfig.create(product_item_id: product_item.id)
variant_1 = SizeVariant.create(name: 'SIZE', value: 'M', product_category_id: hoodie_category.id)
variant_2 = ColorVariant.create(name: 'COLOR', value: 'BLACK', product_category_id: hoodie_category.id)

product_item_config.variants << [variant_1, variant_2]
