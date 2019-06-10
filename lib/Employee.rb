require 'pry'
class Employee

  @@all = []
  attr_reader :name, :department, :salary

  def initialize(name, department, salary)
    @name = name
    @department = department
    # @manager = manager
    @salary = salary
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paid_over(amount)
    @@all.select{|empl| empl.salary > amount}
  end

  def self.find_by_department(dept)
    # all.find{ | empl | empl.department == dept}.name
    # deepdept = Department.find_department_name(dept)
    # managers_name = deepdept.manager
    mngr_name = Department.find_department_name(dept).manager.name
    @@all.find{ |empl| empl.find_manager.name == mngr_name}
  end

  def find_manager
    self.department.manager
  end

  def tax_bracket
    tax_b = @@all.select do |empl|
      (empl.salary - self.salary).abs <= 1000
    end
    # binding.pry
    tax_b.delete(self)
    tax_b
  end
end
