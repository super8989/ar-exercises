require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Delete the third store
@store3 = Store.find_by(id: 3)
@store3.destroy

# Verify that the store has been deleted
puts Store.count