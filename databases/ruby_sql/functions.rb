
# calculate car's consumption miles per US gallon
# as a function of  its number of cylinders and its weight
def calculate_consumption(nb_cylinders, car_weight)
	return 39.686261 -1.507795*nb_cylinders - 3.190972*car_weight
end 	

# Print the whole db items
def print_db(db_in_ruby)
	db_in_ruby.each do |db_item|
 		puts "model: #{db_item[1]} | consumption: #{db_item[2]} | nb_cylinders: #{db_item[3]} | weight: #{db_item[4]}"
 	end
end 	

# Insert new car using the db object
def create_car(db, model, nb_cylinders, car_weight)
	calculated_consumption = calculate_consumption(nb_cylinders, car_weight).round(1)
	puts "My guess is that your #{model} with #{nb_cylinders} cylinders and #{car_weight*1000} Ibs will use ~ #{calculated_consumption} miles/gallon"
	db.execute("INSERT INTO cars (model ,consumption, nb_cylinders, weight) VALUES (?, ?, ?, ?)", [
		model, calculated_consumption, nb_cylinders, car_weight])	
end 