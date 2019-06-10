class Accounts

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create(account_name)
    found_account = @@all.find do |account|
      account.name.include?(account_name)
    end

    if found_account
        return found_account
    else
      Accounts.new(account_name)
    end
  end

  def employees
    emp_acc = EmpAcc.all.select do |emp_acc|
      emp_acc.account == self
    end
    emp_acc.map do |emp_acc|
      emp_acc.employee
    end
  end


end
