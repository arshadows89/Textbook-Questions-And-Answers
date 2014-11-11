#1) Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.
#Then create a new class called MyTruck that inherits from your superclass that also has a constant defined that separates it from the MyCar class in some way.
#2) Add a class variable to your superclass that can keep track of the number of objects created that inherit from the superclass. Create a method to print out the value of this class variable as well.
#3) Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.
#4) Print to the screen your method lookup for the classes that you have created.
#5) Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. Make sure that all of your previous method calls are working when you are finished.
#6) Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.
module Power_Stearing
  def power_stearing
    puts "Yes it has power stearing!"
  end
end

class Vehicle
  @@number_of_vehicles = 0
  attr_accessor :color, :model, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
  end
  
  def age
    puts 'Your car is '+calculate_age.to_s+' years old.'
  end
  
  def number_of_vehicles
    puts 'There are '+@@number_of_vehicles.to_s+' vehicles'
  end
  
  
  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
  
    def speed_up(how_fast)
    self.speed = speed + how_fast
    puts "You push the gas and accelerate #{speed} mph."
  end

  #ur brake method
  def slow_down(how_much)
    self.speed = speed - how_much
  end
  
  # ur turn off method
  def brake
    self.speed = 0
    puts 'You brake and stop the car, you are now '+speed.to_s+' mph'
  end
  
  def spray_paint(color_change)
    puts 'Your spray painting your car to '+color_change+' from '+color+'.'
    self.color = color_change
  end
  
  def to_s
    'Your car is from '+self.year+' and is a '+self.color+' '+self.model+'.'
  end
  
  private
  
  def calculate_age
    the_time = Time.new
    the_year = the_time.year
    the_year - self.year.to_i
  end
end

class MyTruck < Vehicle
  AVG_SIZE_TRUCK_BED = "4 x 8"
  include Power_Stearing
end

class MyCar < Vehicle
  AVG_SIZE_TRUNK_SPACE = "3 x 6"
end

car_one = MyCar.new('1999', 'red', 'Toyota')
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

#7) Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...
#puts "Well done!" if joe.better_grade_than?(bob)
class Student
  attr_accessor :name
  
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(who)
    if self.grade > who.grade
      puts 'Well done!'
    else
      puts '...'
    end
  end
  
  protected
  
  def grade
    @grade
  end
end

#8) Given the following code...
#bob = Person.new
#bob.hi
#And the corresponding error message...
#NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
#from (irb):8
#from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'
#What is the problem and how would you go about fixing it?

# You have the method your trying to use as private so its unobtainable to you. If you want to obtain that method and use it then just move it so its not below private.