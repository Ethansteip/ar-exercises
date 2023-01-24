require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Find stores with id's 1 and 2
@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)

# update store 1's name
@store1.name = "Hamilton"
@store1.save

print @store1.inspect