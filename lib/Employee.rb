class Employee
  @@all = []

  attr_reader :salary, :name
  attr_accessor :manager_name, :department

  def initialize(name, salary, manager_name, department)
    @name = name
    @department = department
    @salary = salary
    @manager_name = manager_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(fixnum)
    @@all.select do |employee|
      employee.salary > fixnum
    end
  end

  def self.find_by_department(department_name)
    Manager.all.find do |manager|
      if manager.department == department_name
        manager.employees[0].name
      end
    end
  end

  def tax_bracket
    @@all.select do |employee|
      self.salary <= employee.salary + 1000 && self.salary >= employee.salary - 1000
    end
  end
end
