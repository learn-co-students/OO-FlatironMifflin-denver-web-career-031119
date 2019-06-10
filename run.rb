require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

bill = Manager.new("Bill", "HR", "accounting", 7)
tom =  Manager.new("Tom", "Desks", "accounting", 9)
person1 = Employee.new("car", 3000, "Bill")
person2 = Employee.new("boat", 50, "Bill")
person3 = Employee.new("donkey", 2500, "Bill")


binding.pry
puts "done"
