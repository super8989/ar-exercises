require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

#  Loading a subset of stores

# create 3 more stores:
surrey = Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

whistler = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)

yaletown = Store.create(name: 'Yaletown', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)

# fetch only those stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Loop through each stores and output their name and annual revenue on each line.
@mens_stores.each do |store| 
  puts store.name 
  puts store.annual_revenue
end
  
# Load stores that carry women's apparel and have less than $1M in annual revenue
@womens_stores = Store.where("womens_apparel = true AND annual_revenue < 1000000")

@womens_stores.each { |store| puts store.name}