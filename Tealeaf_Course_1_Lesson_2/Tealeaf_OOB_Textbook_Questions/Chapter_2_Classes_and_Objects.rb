# Chapter_2_Classes_and_Objects.rb
#1)Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.
#2)Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.
#3)You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.
class MyCar
  attr_accessor :color, :model, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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
end

car_one = MyCar.new('1999', 'red', 'Toyota')
car_one.speed_up(20)     #shows 20
car_one.speed_up(15)     #shows 35
car_one.brake            #shows 0
puts car_one.color       # red
car_one.color = 'black'
puts car_one.color       # black
puts car_one.year        # 1999
#car_one.year = '2000' fails
car_one.spray_paint('blue')
puts car_one.color