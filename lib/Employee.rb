


class Employee
attr_reader :name #:salary

@@all = []

def self.all
  @@all
end

def initialize(name) #salary)
  @name = name
  #@salary = salary
  @@all << self
end


def new_account(account_name)
  account = Accounts.find_or_create(account_name)
  EmpAcc.new(self, account)
  account
end

def accounts
  emp_acc = EmpAcc.all.select do |emp_acc|
    emp_acc.employee == self
  end
  emp_acc.map do |emp_acc|
    emp_acc.account
  end
end


=begin
def manager_name
  Manager.all.each do |manager|
    if  manager.employees.include?(self)
    return manager.name
    end
  end
end

def self.paid_over(salary)
  self.all.select do |employee|
    employee.salary > salary
    end
end

def self.find_by_department(name_department)
  var =  Manager.all.find do |manager|
    manager.department == name_department
  end
  var.employees[0]
end

def tax_bracket
  @@all.select do |employee| #self here refers to all employees
    (employee.salary - self.salary).abs <= 1000
#if self salary - other_empoloyee salary is less than or = 1000, true
  end
end
=end

end
