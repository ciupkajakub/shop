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
