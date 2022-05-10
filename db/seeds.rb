# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Category.destroy_all
Product.destroy_all

puts 'Adding database items'
fruits = Category.create!(title: 'Fruits')
vegetables = Category.create!(title: 'Vegetables')
beverages = Category.create!(title: 'Beverages')

apples = Product.new(title: 'Apples', price: 1.79)
apples.category = fruits
apples.save
strawberries = Product.new(title: 'Strawberries', price: 4.58)
strawberries.category = fruits
strawberries.save

potatoes = Product.new(title: 'Potatoes', price: 0.97)
potatoes.category = vegetables
potatoes.save
tomatoes = Product.new(title: 'Tomatoes', price: 1.69)
tomatoes.category = vegetables
tomatoes.save

coffee = Product.new(title: 'coffee', price: 2.30)
coffee.category = beverages
coffee.save
green_tea = Product.new(title: 'green_tea', price: 0.65)
green_tea.category = beverages
green_tea.save
