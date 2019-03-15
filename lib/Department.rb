class Department

  @@all =[]

  attr_reader :name, :manager

  def initialize(name, manager)
    @name = name
    @manager = manager
    @@all << self
  end

  def self.all
    @@all
  end

end
