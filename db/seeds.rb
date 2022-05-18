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
fruits = Category.create!(title: 'Fruits', photo_url: 'https://images.unsplash.com/photo-1610832958506-aa56368176cf?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170')
vegetables = Category.create!(title: 'Vegetables', photo_url: 'https://images.unsplash.com/photo-1557844352-761f2565b576?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170')
beverages = Category.create!(title: 'Beverages', photo_url: 'https://images.unsplash.com/photo-1625865019845-7b2c89b8a8a9?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170')
snacks = Category.create!(title: 'Snacks', photo_url: 'https://images.unsplash.com/photo-1614735241165-6756e1df61ab?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332')

apples = Product.new(title: 'Apples', price: 1.79, photo_url: 'https://images.unsplash.com/photo-1560806887-1e4cd0b6cbd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80')
apples.category = fruits
apples.save
strawberries = Product.new(title: 'Strawberries', price: 5.00, discount: 2, photo_url: 'https://images.unsplash.com/photo-1543158181-e6f9f6712055?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
strawberries.category = fruits
strawberries.save

potatoes = Product.new(title: 'Potatoes', price: 0.97, photo_url: 'https://images.unsplash.com/photo-1635774855536-9728f2610245?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
potatoes.category = vegetables
potatoes.save
tomatoes = Product.new(title: 'Tomatoes', price: 1.69, photo_url: 'https://images.unsplash.com/photo-1582284540020-8acbe03f4924?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80')
tomatoes.category = vegetables
tomatoes.save

coffee = Product.new(title: 'Coffee', discount: 3, price: 11.23, photo_url: 'https://images.unsplash.com/photo-1599639957043-f3aa5c986398?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1088&q=80')
coffee.category = beverages
coffee.save
green_tea = Product.new(title: 'Green tea', discount: 1, price: 3.11, photo_url: 'https://images.unsplash.com/photo-1627435601361-ec25f5b1d0e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80')
green_tea.category = beverages
green_tea.save

chocolate = Product.new(title: 'Chocolate', discount: 3, price: 1.5, photo_url: 'https://images.unsplash.com/photo-1577735543554-b77ab63447bb?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387')
chocolate.category = snacks
chocolate.save
chips = Product.new(title: 'Chips', discount: 1, price: 2.5, photo_url: 'https://images.unsplash.com/photo-1581533940608-d2973792f542?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170')
chips.category = snacks
chips.save

puts 'Database added'
