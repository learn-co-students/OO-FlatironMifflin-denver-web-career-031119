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

  end

  def self.tax_bracket

  end
end
