require_relative "lib/Manager"
require_relative "lib/Employee"
require_relative 'lib/Accounts'
require_relative 'lib/EmpAcc'
require 'pry'

=begin
steve = Manager.new("Steve", "Paper", 43)
bob = Manager.new("Bob", "HR", 41)
jenny = Manager.new("Jenny", "Kitchens", 25)

lucy = steve.hire_employee("Lucy", 45000)
cheri = bob.hire_employee("Cheri", 45013)
charles = jenny.hire_employee("Charles", 41340)
=end

paul = Employee.new("Paul")
bob = Employee.new("Bob")

account1 = paul.new_account("account1")
account2 = paul.new_account("account2")
account1 = bob.new_account("account1")


binding.pry
puts "done"
