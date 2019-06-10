require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
bob = Manager.new("Bob", "Sales", 48)
jim = Manager.new("jim", "accounting", 59)

##new empl
bob.hire_employee("james", 5000)
bob.hire_employee("pam", 6000)
bob.hire_employee("dwight", 7000)

Manager.all_departments()

Manager.average_age

Employee.paid_over(5)

Employee.find_by_department("Sales")

puts bob.employees[0].tax_bracket
# .employees.find("james").tax_bracket

binding.pry
puts "done"
