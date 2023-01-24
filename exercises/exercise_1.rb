require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Create 3 new stores
store_1 = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
store_2 = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
store_3 = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

# Confirm that there are 3 stores
puts "There are #{Store.count} stores on record."