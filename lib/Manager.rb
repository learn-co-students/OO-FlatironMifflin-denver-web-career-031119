class Manager
  attr_accessor :name, :department, :age

  @@all = []

  def initialize(name, *department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select {|employee| employee.manager == self.name}
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self.name)
  end

  def all_departments
    self.department
  end

  def self.average_age
    @@all.map{|manager| manager.age}.reduce(:+)/(@@all.length)
  end

  

end
