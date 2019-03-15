require 'pry'

class Manager
  attr_reader :name, :age
  attr_accessor :department, :employees

  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @employees = Employee.all.map { |employee| employee.manager == self}
    @@all << self
  end

  def self.all
    @@all
  end

  def employees
    @employees
  end

  def hire_employee(name, salary)
    @employees << Employee.new(name, salary, self.name, self.department)
  end

  def self.all_departments
    return @@all.collect do |manager|
      manager.department
    end
  end

  def self.average_age
    @@all.map do |manager|
      manager.age
    end.inject(:+) / @@all.length.to_f
  end

end
