require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Create employees for stores
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ethan", last_name: "Steip", hourly_rate: 40)
@store1.employees.create(first_name: "Taylor", last_name: "Baum", hourly_rate: 65)

@store2.employees.create(first_name: "Jake", last_name: "donley", hourly_rate: 55)
@store2.employees.create(first_name: "Bill", last_name: "smith", hourly_rate: 70)
@store2.employees.create(first_name: "Craig", last_name: "greg", hourly_rate: 50)

@store1.employees.create(first_name: "Nate", last_name: "Delong", hourly_rate: 60)
@store1.employees.create(first_name: "Kim", last_name: "Crawford", hourly_rate: 60)
@store1.employees.create(first_name: "Hank", last_name: "Williams", hourly_rate: 60)
