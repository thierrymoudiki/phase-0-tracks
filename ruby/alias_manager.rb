# 0 --- Functions for checks (is_vowel, is_consonant, is_upcase)


# Tells if a letter is a vowel
def is_vowel(input_letter)
  
  if (input_letter.size > 1) then 
    puts "Warning (in is_vowel): the input should be a single letter. \n"
  end   
  
  return("aeiou".include?(input_letter.downcase))
end  


# Tells if a letter is a consonant
def is_consonant(input_letter)
  
  if input_letter.size > 1 then 
    puts "Warning (in is_consonant): the input should be a single letter. \n"
  end  
  
  return ("bcdfghjklmnpqrstvwxyz".include?(input_letter.downcase))
end 


# Tells if a letter is upcase
def is_upcase(input_letter)
  
  if input_letter.size > 1 then 
    puts "Warning (in is_upcase): the input should be a single letter. \n"
  end
  
  return (input_letter == input_letter.upcase)
end   

# 1 --- Functions for finding the next letter


# Returns the next vowel in "aeiou"
def next_vowel(input_vowel)
  if input_vowel.size > 1 then 
    puts "Warning (in next_vowel): the input should be a single letter. \n"
  end
  
  if is_vowel(input_vowel) == false then 
    puts "Warning: the input letter '#{input_vowel}' is not a vowel. \n"
  end   
     
  input_vowel_lowercase = input_vowel.downcase
  if(input_vowel_lowercase == "u") then 
    if(is_upcase(input_vowel)) then
      return "A"
    else   
      return "a"
    end 
  end   
  vowels_table = "aeiou".split('')
  i0 = vowels_table.index(input_vowel_lowercase)
  
  if(is_upcase(input_vowel)) then
    return vowels_table[i0 + 1].upcase
  else 
    return vowels_table[i0 + 1]
  end  
end   


# Returns the next consonant in "bcdfghjklmnpqrstvwxz"
def next_consonant(input_consonant)
  if input_consonant.size > 1 then 
    puts "Warning (in next_consonant): the input should be a single letter. \n"
  end
  
  if is_consonant(input_consonant) == false then 
    puts "Warning: the input letter '#{input_consonant}' is not a consonant. \n"
  end   
     
  input_consonant_lowercase = input_consonant.downcase
  if(input_consonant_lowercase == "z") then 
    if(is_upcase(input_consonant)) then
      return "B"
    else   
      return "b"
    end 
  end   
  consonants_table = "bcdfghjklmnpqrstvwxyz".split('')
  i0 = consonants_table.index(input_consonant_lowercase)
  
  if(is_upcase(input_consonant)) then
    return consonants_table[i0 + 1].upcase
  else 
    return consonants_table[i0 + 1]
  end  
end   


# Function for defining the next letter  
def next_letter(input_letter)
  if(input_letter == ' ')
    return ' '
  end   
  if (is_vowel(input_letter))
    return (next_vowel(input_letter))
  else 
    return (next_consonant(input_letter))
  end   
end 


# 3 --- Function for Inverting names  

# Inverts first name and last name
def invert_names(input_name)
  
  # The input name should include a whitespace
  if (input_name.include?(' ') == false) then 
    puts "Warning: the input name should contain a whitespace, input_name returned \n"
  end   
  
    # Split the input name in: First_name Last_name
    splitted_input_name = input_name.split(' ')
    names_table_length = splitted_input_name.size
    
    # Output table with inverted names 
    inverted_names_table = Array.new(names_table_length, 0)
    
    # Invert the First_name and Last_name
    inverted_names_table[0] =  splitted_input_name[1]
    inverted_names_table[1] = splitted_input_name[0]
  
  return inverted_names_table.join(' ')
end   

# Main function for doing the job
def main_inversion_function(input_name)
  inverted_name = invert_names(input_name)
  table_with_letters = inverted_name.split('')
  res = Array.new(table_with_letters.size, 0)
  
  i = 0
  table_with_letters.each do |x|
    res[i] = next_letter(x)
    i = i + 1 
  end   
  
  return(res.join(''))
end   

#invert_names("Felicia Torres")
# next_consonant('r')
puts main_inversion_function("Felicia Torres")
puts main_inversion_function("Tata Yoyo")
puts main_inversion_function("ZaZa Yoyo")

