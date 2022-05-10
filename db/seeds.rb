# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database'
Product.destroy_all
Category.destroy_all


puts 'Adding database items'
fruits = Category.create!(title: 'Fruits')
vegetables = Category.create!(title: 'Vegetables')
beverages = Category.create!(title: 'Beverages')

apples = Product.new(title: 'Apples', price: 1.79, photo_url: 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80')
apples.category = fruits
apples.save
strawberries = Product.new(title: 'Strawberries', price: 4.58, photo_url: 'https://images.unsplash.com/photo-1543158181-e6f9f6712055?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
strawberries.category = fruits
strawberries.save

potatoes = Product.new(title: 'Potatoes', price: 0.97, photo_url: 'https://images.unsplash.com/photo-1635774855536-9728f2610245?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
potatoes.category = vegetables
potatoes.save
tomatoes = Product.new(title: 'Tomatoes', price: 1.69, photo_url: 'https://images.unsplash.com/photo-1582284540020-8acbe03f4924?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
tomatoes.category = vegetables
tomatoes.save

coffee = Product.new(title: 'coffee', price: 2.30, photo_url: 'https://images.unsplash.com/photo-1485808191679-5f86510681a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80')
coffee.category = beverages
coffee.save
green_tea = Product.new(title: 'green_tea', price: 0.65, photo_url: 'https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
green_tea.category = beverages
green_tea.save
