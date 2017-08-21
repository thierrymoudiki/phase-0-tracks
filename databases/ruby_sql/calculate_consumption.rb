

def calculate_consumption(nb_cylinders, car_weight)
	return 39.686261 -1.507795*nb_cylinders - 3.190972*car_weight
end 	

puts calculate_consumption(4, 2.14)
puts calculate_consumption(8, 3.17)