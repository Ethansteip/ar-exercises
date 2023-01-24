require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# testing employee validation

# no first name - fail
@store1.employees.create(last_name: "TESTINGTESTING", hourly_rate: 60).valid?

# No last name - fail
@store1.employees.create(first_name: "TESTINGTESTING", hourly_rate: 60).valid?

# hourly rate below 40 or above 200 - fail
@store1.employees.create(first_name: "TESTINGTESTING", last_name:"TESTINGTESTING", hourly_rate: 10).valid?
@store1.employees.create(first_name: "TESTINGTESTING", last_name:"TESTINGTESTING", hourly_rate: 500).valid?

# Employees must have a store id - fail
Employee.create(first_name: "TESTINGTESTING", last_name: "TESTINGTESTINGp", hourly_rate: 60).valid?

# Stores must have name with min 3 characters - fail
Store.create(name: "A", annual_revenue: 600000, mens_apparel: true, womens_apparel: true)

# Stores must annual rev greater than 0 - fail
Store.create(name: "ABC", annual_revenue: -5000, mens_apparel: true, womens_apparel: true)

puts "Can you provide us with a store name?"
user_input = gets.chomp
Store.create(name: "#{user_input}")
puts Store.errors.where(:name).first.full_message
