class EmployeeAccount

  attr_reader :employee, :account
  @@all = []

  def initialize(employee, account)
    @employee = employee
    @account = account
  end

  def self.all
    @@all
  end
end
