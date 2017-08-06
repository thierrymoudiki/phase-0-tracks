# 1 - Class declaration 

class GuessingGame
  
  def initialize 
    @guess_count = 0
    @nb_trials = 10
    @word_to_guess = "blabla"
    @guessed_word = "_"*(@word_to_guess.length-1)
    # put a letter from @word_to_guess in the middle floor(@word_to_guess.length/2)
    # use split('')
  end   
  
  def get_guess_count
    return @guess_count
  end
  
  def get_word_to_guess
    return @word_to_guess
  end
  
  def set_word_to_guess(word_to_guess)
    return @word_to_guess = word_to_guess
  end
  
  def get_guessed_word
    return @guessed_word
  end
  
  def set_guessed_word(guessed_word)
    return @guessed_word = guessed_word
  end
  
  def get_nb_trials
    return @nb_trials
  end
  
  def set_nb_trials(nb_trials)
    @nb_trials = nb_trials
  end   
  
  # search for a given letter in the word to guess 
  # updates the guessed word 
  # returns true if found and false otherwise 
  def check_letter(input_letter)
    # Each time we check, the number of guesses is increased 
    @guess_count += 1
    
    # Transform the words into arrays for convenience
    arr_word_to_guess = @word_to_guess.split('') 
    arr_guessed_word = @guessed_word.split('') 
    
    # Search for the input_letter in arr_word_to_guess
    index_found = arr_word_to_guess.each_index.select{|i| arr_word_to_guess[i] == input_letter}
    
    if (index_found == []) then
      return false 
    else 
      # if the letter is found, update the guessed word
      n_found = index_found.size
      i = 0 
      n_found.times do 
        arr_guessed_word[index_found[i]] = input_letter
        i += 1
      end
      @guessed_word = arr_guessed_word.join('')
      return true
    end   
  end   
  
  # returns true if the game is over
  # returns false otherwise
  def is_over
  	if ((@word_to_guess == @guessed_word) || (@guess_count == @nb_trials)) 
  		return true
  	else	
  	  return false
  	end
  end   
  
end   



# 3 - Driver's code 

puts "----- Welcome to the Guessing Game! -----"
puts "\n"
game = GuessingGame.new

puts "User1: Enter the word to be guessed by User2"
word_to_guess = gets.chomp.to_s
game.set_word_to_guess(word_to_guess)
game.set_guessed_word("_"*(word_to_guess.length-1))
nb_trials = word_to_guess.length*2
game.set_nb_trials(nb_trials)

  while !game.is_over 
    puts "\n"
    puts "----- Trial  #{game.get_guess_count + 1}/#{game.get_nb_trials} -----"
    puts "\n"
    puts "User2: Which letter should I add to the word?"
    guess = gets.chomp.to_s.downcase
    letter_check = game.check_letter(guess)
    puts "\n"
    if (letter_check == false)
    	puts "Letter not found. Try again!"
    	puts "\n"
    	puts "The current word you guessed is: " + game.get_guessed_word
    else
      puts "Letter found!"
      puts "\n"
      puts "The current word you guessed is: " + game.get_guessed_word
    end
  end

# When the game is over...

puts "\n"
puts "\n"
puts "------------------"
puts "----- Result -----"
puts "------------------"
puts "\n"
puts "The word you guessed is: " + game.get_guessed_word
if (game.get_word_to_guess == game.get_guessed_word) then
  puts "You won in #{game.get_guess_count} (over #{game.get_nb_trials}) guesses!"
else 
  puts "You have used #{game.get_guess_count} (over #{game.get_nb_trials}) guesses!"
  puts "The word to guess was: " + game.get_word_to_guess
end   
