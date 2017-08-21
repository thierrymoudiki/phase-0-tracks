require 'sqlite3'
require_relative 'functions.rb'

# create SQLite3 database
 db = SQLite3::Database.new("cars.db")
# #db.results_as_hash = true # hmmm put false...

# Create table  containing the cars 
create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS cars(
	id integer primary key,
	model varchar(255),
	consumption real,
	nb_cylinders integer,
	weight real
	)
SQL

# create a kittens table (if it's not there already)
 db.execute(create_table_cmd) #

# If the database doesn't exit, insert data into it
cars = db.execute("SELECT * FROM cars")
if (defined?(car) == false)
 db.execute("insert into cars (model ,consumption, nb_cylinders, weight) values ('Mazda RX4',21.0,6,2.620)")
 db.execute("insert into cars (model ,consumption, nb_cylinders, weight) values ('RX4 Wag',21.0,6,2.875)")
 db.execute("insert into cars (model ,consumption, nb_cylinders, weight) values ('Datsun 710',22.8,4,2.320)")
 db.execute("insert into cars (model ,consumption, nb_cylinders, weight) values ('Hornet 4 Drive',21.4,6,3.215)")
 db.execute("insert into cars (model ,consumption, nb_cylinders, weight) values ('Hornet Sportabout',18.7,8,3.44)")
end

# Driver's program
choice = "Y"
while (choice != "stop")
	puts "----------------------------------------------------------------------------------------"
	puts "\n"
	puts "Hi! I will try to predict your car's consumption \n if you give me its number of cylinders and its weight..."
	puts "\n"
	puts "What's the model of the car? (I won't use it in the calculation)"
	model = gets.chomp.to_s
	puts "\n"
	puts "What's the number of cylinders?"
	nb_cylinders = gets.chomp.to_i
	puts "\n"
	puts "What's the weight of the car? (1000 Ibs)"
	car_weight = gets.chomp.to_f
	puts "\n"

	create_car(db, model, nb_cylinders, car_weight)
	cars = db.execute("SELECT * FROM cars")
	puts "\n"

	puts "Do you want to view the database content? (Y/N)"
	puts "(to exit, type 'stop')"
	choice = gets.chomp.to_s

	if (choice == "Y")
		puts "\n"
		print_db(cars)	
		puts "\n"
	elsif (choice == "stop")	
		break
	end	
end