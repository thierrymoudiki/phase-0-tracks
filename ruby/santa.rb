# Release 1

class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", 
    "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end 
  
  # obtaining the gender of Santa 
  def get_gender
    return @gender
  end 
  
  # obtaining the ethnicity of Santa 
  def get_ethnicity 
    return @ethnicity    
  end    
  
  # Santa speaks   
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  # Santa eats 
  def eat_milk_and_cookies(cookie_type)
    puts "That's was a good #{cookie_type} cookie!"
  end   
end


# tests 
santa1 = Santa.new("Male", "None")
santa1.speak
santa1.eat_milk_and_cookies("macadamia")
puts "santa1's gender: "
puts santa1.get_gender
puts "santa1's ethnicity: "
puts santa1.get_ethnicity

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end