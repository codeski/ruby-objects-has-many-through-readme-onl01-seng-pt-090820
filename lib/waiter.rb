class Waiter
  
  attr_accessor :name, :yrs_exp 
  
  @@all = []
  
  def initialize(name, yrs_exp)
    @name = name
    @yrs_exp = yrs_exp
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end
   
  def meals 
    Meal.all.select {|meal| meal.waiter == self}
  end 
  
  def best_tipper 
  end

end