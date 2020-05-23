def Account


  @@all = []

  def initialize(acct_number)
    @acct_number = acct_number

    self.find_or_create
      EmployeeAcct.all.map{ |emp_acct|
       if emp_acct.account == self
       emp_acct.account
      else
        EmployeeAcct.new(self)
    end}
  end

  def self.all
    @@all
  end

end
