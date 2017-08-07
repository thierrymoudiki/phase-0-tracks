# 1 - Example 1

class Puppy

  #def initialize
  #  puts "Initializing new Puppy instance"
  #end 
    
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number_of_times)
    number_of_times = number_of_times.to_i
    number_of_times.times do
      puts "Woof!"
    end 
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(number_of_years)
    number_of_years*9
  end   
  
  def run(number_of_meters)
    puts "I ran #{number_of_meters} meters!"
  end   

end

# 1 - initializes an instance of Puppy, and verify that instance can fetch a ball

toto = Puppy.new
toto.fetch("ball")

# 2 - Add a speak method that takes an integer, and then prints "Woof!" that many times.
toto.speak(5)

# 3 - Add a roll_over method that just prints "*rolls over*".
toto.roll_over

# 4 - Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
toto.dog_years(3)

# 5 - Add one more trick -- whichever one you'd like.
toto.run(100)

# 2 - Example 2

## Release 1
class Gymnast
  
  def initialize
    @name = "Toto"
    @age = 20
    @height = 175
    @weight = 60
  end  
  
  def flip
    puts "Flips!"
  end 
  
  def jump
    puts "Jumps!"
  end 
  
end   

## Release 2


## Storing the objects in a hash 
hsh_gymnasts = {}

50.times {|x|
  key = "gymnast #{x + 1}"
  value = Gymnast.new
  hsh_gymnasts[key] = value
}   

## Loop and call the methods on the objects stored in the hash
hsh_gymnasts.each do |key, value|
  p "----- #{key} -----"
  puts value.flip
  puts "and..."
  puts value.jump
end   
  
