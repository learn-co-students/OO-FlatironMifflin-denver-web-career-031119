require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Test your code here
zach = Employee.new("zach", 500, "jack")
bill = Employee.new("bill", 100, "jack")
jack = Manager.new("jack", "HR", 26)
bob = Manager.new("bob", "IT", 0)

puts jack.employees

puts jack.hire_employee("kendall", 1000)
binding.pry

puts "done"
