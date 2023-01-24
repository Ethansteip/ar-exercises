require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Sum total annual revenue from all stores
@total_annual_rev = Store.sum("annual_revenue")
pp "Total annual revenue is $#{@total_annual_rev}"

# Average total annual revenue from all stores
@average_annual_revenue = Store.average("annual_revenue")
pp "Average annual revenue is $#{@average_annual_revenue}"

# Count stores generating more than $1M in annual revenue
@count_stores_generating_more_than_1mill = Store.where('annual_revenue > ?', 1000000).count
pp "There are #{@count_stores_generating_more_than_1mill} stores generating more than $1M in annual revenue."