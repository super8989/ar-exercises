require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Create 3 stores
burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Output number of stores using ActiveRecord's count method, to ensure there's three stores in the database.
puts Store.count