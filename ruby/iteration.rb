# 0 - Functions 

  # calculate average of array's elements 
  def avg(input_array)
    n = input_array.size 
    sum = 0 
    n.times{|x|
     sum = sum + input_array[x]
    }
    return ((sum/n).to_f)
  end   

  # creates a hash with players having heights < bound
  def filter_lower_than(input_hash, bound)
    output_hash = {}
    input_hash.each do |key, value|
      if (value < bound)
        output_hash[key] = value    
      end
    end
    return output_hash
  end   
  
  # same than filter_lower_than, but using select on the hash
  def filter_upper_than(input_hash, bound)
    return input_hash.select { |k, v| v > bound}
  end
  
# 1 - Main program

# Use of each 
  
  # Heights (in cm) stored in array 
  ary_players_heights = [["Karl Towns", 213], ["John Wall", 193], ["Giannis Antetokoumpo", 211], ["C.J. McCollum", 193], ["DeMar DeRozan", 201], ["James Harden", 196]]
  
  # Storing players heights in a hash
  hsh_players_heights = {}
  ary_players_heights.each do |player|
     name = player[0]
     height = player[1]
     hsh_players_heights[name] = height
  end
  
  puts "Prints hash containing all the players' heights: "
  puts hsh_players_heights
  puts "\n"
  
  # Calculate average height for all the players 
    puts "Average height for all the players: "
    heights = hsh_players_heights.map{|x| x[1]}
    puts avg(heights)
  
  puts "\n"
  # Players with height < 200cm
  hsh_players_heights_200 = filter_lower_than(hsh_players_heights, 200)
  puts "The players with height < 200cm are: "
  hsh_players_heights_200.each do |key, value|
        puts "Player's name: #{key}; Height:  #{value}."
  end
  
  puts "\n"
  puts "Average height for the players with height < 200cm: "
  heights_lower_than_200 = hsh_players_heights_200.map{|x| x[1]}
  puts avg(heights_lower_than_200)
  
  
  puts "\n"
  # Players with height > 200cm
  hsh_players_heights_up_200 = filter_upper_than(hsh_players_heights, 200)
  puts "The players with height > 200cm are: "
  hsh_players_heights_up_200.each do |key, value|
        puts "Player's name: #{key}; Height:  #{value}."
  end
  
  puts "\n"
  puts "Average height for the players with height > 200cm: "
  heights_higher_than_200 = hsh_players_heights_up_200.map{|x| x[1]}
  puts avg(heights_higher_than_200)