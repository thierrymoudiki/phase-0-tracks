# Encryption

def previous(input_letter)
  alphabet_string = "abcdefghijklmnopqrstuvwxyz"
  input_letter_index = alphabet_string.index(input_letter)
  return alphabet_string[input_letter_index - 1]
end  

def encrypt(input_string)
    n = input_string.length
    output_string = Array.new(n, "")
    for i in 0..(n-1) do
      if (input_string[i] == "z")  
        output_string[i] = "a"
      else 
        output_string[i] = input_string[i].next
      end    
    end
  
  return output_string.join
end   

# Decryption

def decrypt(input_string)
  n = input_string.length
    output_string = Array.new(n, "")
    for i in 0..(n-1) do
     output_string[i] = previous(input_string[i])
    end
  
  return output_string.join
end   

# Interface

def interface(input_string)
  puts "would you like to encrypt or decrypt the string?"
  puts "choices: encrypt = 1, decrypt = 2:"
  answer = gets.chomp
  answer = answer.to_i
  if answer == 1 
    puts "enter your password"
    password = gets.chomp
    if (password.to_i == 123)
      return(encrypt(input_string))
    else
      puts "wrong password, try again"
    end  
  elsif answer == 2 
    puts "enter your password"
    password = gets.chomp
    if (password.to_i == 123)
      return(decrypt(input_string))
    else
      puts "wrong password, try again"
    end
  else
    puts "available choices: encrypt = 1, decrypt = 2"
  end 
end 

# encrypt("abc") should return "bcd"
# encrypt("zed") should return "afe"
# decrypt("bcd") should return "abc"
# decrypt("afe") should return "zed"
# decrypt(encrypt("swordfish"))

#puts encrypt("abc") 
#puts encrypt("zed") 
#puts decrypt("bcd") 
#puts decrypt("afe") 
#puts decrypt(encrypt("swordfish"))

interface("abc")

