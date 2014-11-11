#1)Add a class method to your MyCar class that calculates the gas mileage of any car.
#2)Override the to_s method to create a user friendly print out of your object.
class MyCar
  attr_accessor :color, :model, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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
puts car_one.color       # blue

#2)Override the to_s method to create a user friendly print out of your object.






#3)When running the following code...
#class Person
#  attr_reader :name
#  def initialize(name)
#    @name = name
#  end
#end

#bob = Person.new("Steve")
#bob.name = "Bob"
#We get the following error...
#test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)
#Why do we get this error and how to we fix it?
# Issue is that its set to attr_reader and considering we want it to write and read we need to change it to attr_acessor