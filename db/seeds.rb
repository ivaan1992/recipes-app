# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name: 'Ivan')
food1 = Food.create(name: 'Spageti', measurement_unit: 'grams', price: '10', quantity: '1', user_id: user1.id)
Food.create(name: 'Apple', measurement_unit: 'units', price: '10', quantity: '10', user_id: user1.id )
Food.create(name: 'Orange', measurement_unit: 'units', price: '10', quantity: '10', user_id: user1.id )
Food.create(name: 'Salt', measurement_unit: 'grams', price: '10', quantity: '10', user_id: user1.id )
Food.create(name: 'Sugar', measurement_unit: 'grams', price: '10', quantity: '10', user_id: user1.id )
Food.create(name: 'Coffee', measurement_unit: 'grams', price: '10', quantity: '10', user_id: user1.id )
