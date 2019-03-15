class Manager
  attr_reader :name, :department, :age

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    Employee.all.select do |employee|
      employee.manager_name == self.name
    end
  end

  def hire_employee(name, salary)
    Employee.new(name, salary, self.name)
  end

  def self.all_departments
    @@all.map{|manager|
    manager.department}
  end

  def self.average_age
    count = 0
    age_sum = 0
    @@all.each{|manager|
    count += 1
    age_sum += manager.age}
    age_sum / count
  end


end
