# 3 - allergies 

def condition_allergies()
  i = 1
  puts "Enter allergy number #{i} (when done, type 'done')"
  allergy = gets.chomp
  
  
  i = i + 1
  while allergy != "done"
    puts "Enter allergy number #{i}"
    allergy = gets.chomp
    i = i + 1
  end 
  
  return true
  
end 

# 1 - Questions 
def questionnaire()
  # 1 - Questions

puts "What is your name?"
	employee_name = gets.chomp 

puts "How old are you?"
	age = gets.chomp
	if (age == "") 
		puts "No value provided: estimated age set to nil"
		age = nil
	else
		age = age.to_i	
	end

puts "What year were you born?"
	year_born = gets.chomp
	year_born = year_born.to_i	

puts "Do you eat garlic? (Y/N)"
	eat_garlic = gets.chomp
until (eat_garlic == "Y" || eat_garlic == "N")
	puts "Accepted values are Y or N..."
	puts "Try again: "
		eat_garlic = gets.chomp
end

puts "Would you like to enroll in the company's health insurance? (Y/N)"
	enroll_insurance = gets.chomp
until (enroll_insurance == "Y" || enroll_insurance == "N")
	puts "Accepted values are Y or N..."
	puts "Try again: "
		enroll_insurance = gets.chomp
end

# 2 - Define conditions 
## Age and borning year
	condition_age_year = ((2017 - year_born) == age)
## Eats garlic or not 
	if (eat_garlic == "Y")
		condition_garlic = true
	else 
		condition_garlic = false
	end 
## Enrollment in insurance
	if (enroll_insurance == "Y")
		condition_insurance = true
	else 
		condition_insurance = false
	end		 
## allergies 
  condition_allergy = condition_allergies()

# 3 - Final diagnostic

result = "Results inconclusive"

if (condition_allergy == false)
  result = “Probably a vampire”
end   

if(condition_age_year == true && (condition_garlic == true || condition_insurance == true))
	result = "Probably not a vampire"
end 	

if(condition_age_year == false && (condition_garlic == false || condition_insurance == false))
	result = "Probably a vampire"
end

if(condition_age_year == false && (condition_garlic == false && condition_insurance == false))
	result = "Almost certainly a vampire"
end 	

if (employee_name == "Drake Cula" || employee_name == "Tu Fang")
	result = "Definitely a vampire"	
end 	

puts "=============================== \n"
puts "Result of the survey: #{result}"
end   

# 2 - Multiple employee questions 

def multiple_questions()
  # 0 - Number of employees 
  puts "How many employees are there?"
	nb_employees = gets.chomp
	nb_employees = nb_employees.to_i
  for i in 1..nb_employees
    puts "----- Employee number #{i} ----- "
    questionnaire()
    puts "=============================== \n"
    puts "\n"
  end 
end   


multiple_questions()