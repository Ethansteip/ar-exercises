require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'pp'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Create 3 more stores
store_1 = Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
store_2 = Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
store_3 = Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Find stores that sell mens apparel, print store + annual rev.
@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store| 
  pp "Store: #{store.name}"
  pp "Annual Revenue: #{store.annual_revenue}"
end

# Find stores that sell wommens apparel and have < 1000000 in annual rev., print store + annual rev.
@womens_store_under_1mill = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

@womens_store_under_1mill.each do |store| 
  pp "Store: #{store.name}"
  pp "Annual Revenue: #{store.annual_revenue}"
end
