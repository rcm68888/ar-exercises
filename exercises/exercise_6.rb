require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Exercise 6: One-to-many association
# The store_id (integer) column identifies which store each employee belongs to. It points to the id (integer) column of their store.
# Let's tell Active Record that these two tables are in fact related via the store_id column.
# 1. Add the following code directly inside the Store model (class): has_many :employees
# 2. Add the following code directly inside the Employee model (class): belongs_to :store
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Korina", last_name: "Sanchez", hourly_rate: 70)
@store1.employees.create(first_name: "Julius", last_name: "Babao", hourly_rate: 65)
@store2.employees.create(first_name: "Mario", last_name: "Dumaual", hourly_rate: 75)
@store2.employees.create(first_name: "Karen", last_name: "Davila", hourly_rate: 70)
@store2.employees.create(first_name: "Nym", last_name: "Poliknish", hourly_rate: 65)
@store2.employees.create(first_name: "Bernadette", last_name: "Sembrano", hourly_rate: 68)