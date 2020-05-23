class Employee
  attr_reader :name
  attr_accessor :salary, :manager_name

  @@all = []
  def initialize(name, salary, manager_name)
    @name = name
    @salary = salary
    @manager_name = manager_name

    @@all << self

  end

  def self.all
    @@all
  end

  def self.paid_over(salary)
    @@all.select {|employee|
    employee.salary > salary}
  end

  def self.find_by_department(dept_name)
    empl_manager = Manager.all.find{|manager|
     manager.department == dept_name}

     empl = @@all.find{|employee|
     employee.manager_name == empl_manager.name}

     empl.name
  end

  def self.tax_bracket(employee_w_salary)
    @@all.select{ |employee|
    employee_w_salary.salary - 1000 < employee.salary && employee.salary < employee_w_salary.salary + 1000 && employee_w_salary.name != employee.names}
  end
end
