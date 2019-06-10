require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative "lib/Department"
require 'pry'


#Test your code here
bob = Manager.new('Bob', 'Nike', 38)
steve = Manager.new('Steve Jobs', 'Apple', 59)

bill = bob.hire_employee('Bill', 50000)
will = bob.hire_employee('Will', 35000)

kendall = steve.hire_employee('Kendall', 100000)
phillis = steve.hire_employee('Phillis', 54100)
jordan = steve.hire_employee('Jordan', 55000)

binding.pry
puts "done"
