# Create a hash with initial default values 
# ask for client's name 
# Insert name info into the hash
# ask for client's age 
# Insert age info into the hash
# ask for client's number of kids 
# Insert client info into the hash
# # ask for client's decor theme
# Insert name decor theme info into the hash
# Update the hash if needed 
# print the hash 

def get_client_info

# Initialize a hash containing client's info 
  client_info = {
"name" => "toto",
"age" => "25",
"nb_kids" => 2, 
"decor_theme" => "cerulean"
}

# The program gets the user's input   
  puts "----- Welcome to the client information application -----"
  puts "\n"
  
  puts "Please enter the client's name: "
    client_info["name"] = gets.chomp
  
  puts "Please enter the client's age: "
    age = gets.chomp
    client_info["age"] = age.to_i 
  
  puts "Please enter the client's number of kids: "
    nb_kids = gets.chomp
    client_info["nb_kids"] = nb_kids.to_i 
  
  puts "Please enter the client's preferred decor theme: "
    client_info["decor_theme"] = gets.chomp
  
  puts "\n"
  puts "----- Would you want to update any information? -----"
  puts "\n"
  puts "choice: 1 = update name \n"
  puts "choice: 2 = update age \n"
  puts "choice: 3 = update number of kids \n"
  puts "choice: 4 = decor theme \n"
  puts "choice: anything else = no update \n"
  puts "\n"
  puts "choice: \n"
  update_choice = gets.chomp.to_i
  
  puts "\n"
  case update_choice
    when 1 
      puts "Enter updated name:"
      client_info["name"] = gets.chomp
      puts "\n"
      puts "choice #{update_choice}: name updated!"
    when 2 
      puts "Enter updated age:"
      age = gets.chomp
      client_info["age"] = age.to_i 
      puts "\n"
      puts "choice #{update_choice}: age updated!"
    when 3 
      puts "Enter updated number of kids:"
      nb_kids = gets.chomp
      client_info["nb_kids"] = nb_kids.to_i 
      puts "\n"
      puts "choice #{update_choice}: number of kids updated!"
    when 4 
      puts "Enter updated decor theme:"
      client_info["decor_theme"] = gets.chomp
      puts "\n"
      puts "choice #{update_choice}: decor theme updated!"  
    else 
      puts "You gave me #{update_choice.to_s} -- Nothing was updated."
  end
  
  puts "\n"
  puts "----- Information recap -----"
  puts "\n"
  # prints client_info
  client_info.each do |key, value|
    puts key.to_s + ": " 
    puts value.to_s
  end
end   
