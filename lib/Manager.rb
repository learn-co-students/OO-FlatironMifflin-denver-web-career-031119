class Manager
  @@all = []

  attr_reader :name, :department, :age

  def initialize(name, department, age)
    @name = name
    @department = Department.new(department, self)
    @age = age
    @@all << self
  end

  def employees
    Employee.all.select{ |empl| empl.department == self.department}#.map{|e| e.name}
  end

  def self.all
    @@all
  end

  def hire_employee(name, pay)
    Employee.new(name, department, pay)
  end

  def self.all_departments
    Department.all.map{|depts| depts.name}
  end

  def self.average_age
    total_age =0.0
    num_mangers = @@all.map{|manager| manager.age}.each{|age| total_age += age.to_f}.count
    total_age / num_mangers.to_f
  end

end
