class Employee

 attr_accessor :name, :salary, :manager

  @@all = []

  def initialize(name, salary, manager)
    @name = name
    @salary = salary
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

  def manager_name
    self.manager.to_s
  end

  def self.paid_over(salary)
    @@all.select{|employee| employee.salary > salary}
  end

  def self.find_by_department(name)
    @@all.find do |employee|
      manager_name = employee.manager

      Manager.all.select do |manager|
        manager.department == name
        return employee
      end

    end
  end

  def tax_bracket
    @@all.select do |other_employee|
      other_employee.salary.between?((self.salary - 1000),(self.salary + 1000))
    end
  end



end
