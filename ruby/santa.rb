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
  
  # obtaining the reindeer ranking of Santa 
  def get_reindeer_ranking
    return @reindeer_ranking
  end    
  
  # obtaining the age of Santa 
  def get_age
    return @age
  end
  
  def set_age(given_age)
    @age = given_age
  end
  
  # Santa speaks   
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
  
  # Santa eats 
  def eat_milk_and_cookies(cookie_type)
    puts "That's was a good #{cookie_type} cookie!"
  end   
  
  def celebrate_birthday
    @age += 1
  end 
  
  def get_mad_at(reindeer_name)
    if @reindeer_ranking.include?(reindeer_name) 
      index_reindeer_name = @reindeer_ranking.index(reindeer_name)
      temp = @reindeer_ranking[-1]
      @reindeer_ranking[-1] = reindeer_name
      @reindeer_ranking[index_reindeer_name] = temp
    else 
      "reindeer name not found"
    end 
  end   
  
  def set_gender(new_gender)
    @gender = new_gender
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

santa1.get_reindeer_ranking
santa1.get_mad_at("Rudolph")

# Creating many santas
n = 100
n.times do |santa|
  # gender 
  gender = example_genders.sample 
  #ethnicity
  ethnicity = example_ethnicities.sample 
  # age 
  age = rand(1..10)
  santa_object = Santa.new(gender, ethnicity)
  santa_object.set_age(age)
  p "Santa number #{santa} is a #{ethnicity} #{gender}, and is #{age} years old"  
end   


