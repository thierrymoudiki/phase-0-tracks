# 1 - Hamster's name 

puts "Hamster's name?"
hamster_name = gets.chomp 

# 2 - Volume level

puts "Tolerated volume level? (from 1 to 10)"
volume_level = gets.chomp 
volume_level = volume_level.to_f
until ((volume_level >= 1.0) && (volume_level <= 10.0))
	puts "Tolerated volume level must be comprised between 1 and 10..."
	puts "Try again: "
	volume_level = gets.chomp
	volume_level = volume_level.to_f
end

# 3 - Fur color

puts "Fur color?"
fur_color = gets.chomp 

# 4 - Available for adoption?

puts "Available for adoption? (Y/N)"
adoption = gets.chomp
until (adoption == "Y" || adoption == "N")
	puts "Accepted values are Y or N..."
	puts "Try again: "
	adoption = gets.chomp
end

# 5 - Estimated age

puts "Estimated age?"
age = gets.chomp
if (age == "") 
	puts "No value provided: estimated age set to nil"
	age = nil
else
	age = age.to_i	
end 

