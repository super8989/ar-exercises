require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Update store1 name back to Burnaby
burnaby = Store.find_by(id: 1)
burnaby.name = 'Burnaby'
burnaby.save

# Add some data into employees
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Captain", last_name: "America", hourly_rate: 100)
@store2.employees.create(first_name: "Iron", last_name: "Man", hourly_rate: 300)
@store2.employees.create(first_name: "Black", last_name: "Widow", hourly_rate: 200)