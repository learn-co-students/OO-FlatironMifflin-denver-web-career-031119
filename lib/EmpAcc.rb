class EmpAcc

  attr_reader :employee, :account
  @@all = []

  def initialize(employee, account)
    @employee = employee
    @account = account
    @@all << self
  end

  def self.all
    @@all
  end

end
