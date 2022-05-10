# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

PRODUCTS_COUNT = 100

MAX_CATEGORIES = 3

MAX_VARIANTS = 4
VARIANTS_WEIGHT = 0.53


Category.find_or_create_by!(title: 'Fruits')
Category.find_or_create_by!(title: 'Vegetables')
Category.find_or_create_by!(title: 'Beverages')

PRODUCTS_COUNT.times do

  title = ''

  # generate unique title
  loop do
    title = Faker::Commerce.product_name
    break unless Product.exists?(title: title)
  end

  product = Product.new(
    title: title,
    price: Faker::Commerce.price
  )

  num_categories = 1 + rand(MAX_CATEGORIES)
  product.categories = CATEGORIES.sample(num_categories)

  product.save!

end
