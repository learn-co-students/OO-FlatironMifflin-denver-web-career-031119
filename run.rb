require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Test your code here
zach = Employee.new("zach", 0, "jack")
jack = Manager.new("jack", "HR", 26)

puts jack.employees

binding.pry
puts "done"
