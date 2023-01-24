require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Find store 3 and delete its record
@store3 = Store.find_by(id: 3)
@store3.destroy

# Confirm that only 2 stores remain
puts "There are #{Store.count} stores on record."

