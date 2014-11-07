#1)How do we create an object in Ruby? Give an example of the creation of an object.
Class Dog
def speak(sound)
p '+sound+'
end
def say_name(name)
p '+name+'
end
end
buddy = Dog.new
buddy.speak('Arf!')
buddy.say_name('buddy')
#2)What is a module? What is its purpose? How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.
#Modules is used to organize classes, as shown below with Module pet storing multiple classes that can be considered pets. Also Modules can be used for methods that will be used in multiple classes.
Module Speak
def speak(sound)
p '+sound+'
end
end

Module SayName
def say_name(name)
p '+name+'
end
end
Module Pet
Class Dog
include Speak
include SayName
end
Class Cat
include Speak
inlcude SayName
end
end

buddy = Pet::Dog.new
buddy.speak('Arf!')
buddy.say_name('buddy')
kitty = Pet::Cat.new
kitty.speak('Meow!')
kitty.say_name('kitty')
