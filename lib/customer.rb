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
  def new_meal(waiter, total, tip)
    meal = Meal.new(waiter, self, total, tip)
  end
  def meals
    Meal.all.select do |meal|
<<<<<<< HEAD
        meal.customer == self
    end
  end
  def waiters
    self.meals.map do |meal|
      meal.waiter
=======
      meal.customer == self
>>>>>>> d72dd559826770a4df16e770e74ebfaf0de6a4dd
    end
  end
end