class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

# 1 - initializes an instance of Puppy, and verify that instance can fetch a ball

toto = Puppy.new
toto.fetch("ball")