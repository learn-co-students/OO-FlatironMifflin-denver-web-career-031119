class Manager

  attr_reader :name, :age
  attr_accessor :employees, :department

@@all = []

def self.all
  @@all
end

 def initialize(name, department, age)
   @name = name
   @department = department
   @age = age
   @employees = []
   @@all << self
 end

def hire_employee(name, salary)
  employee = Employee.new(name,salary)
  @@all << employee
  employee
end

def self.all_departments
@@all.map do |manager|
   manager.department
end
end

def self.average_age
ages = @@all.map {|manager_age| manager_age.age}
ages.sum / ages.size
end
end
