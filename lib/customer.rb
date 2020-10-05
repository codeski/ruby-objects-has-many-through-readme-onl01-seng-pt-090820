class Customer
  
  attr_accessor :name, :age 
  
  @@all = []
  
  def initialize(name, age) 
    @name = name 
    @age = age
    @@all << self
  end 
  
  def self.all 
    @@all 
  end
  
  def new_meal(self, waiter, total, tip = 0)
    Waiter.new(waiter, total, tip = 0)
  end 
  
  def meals 
  end 
  
  def waiters 
  end
  
end