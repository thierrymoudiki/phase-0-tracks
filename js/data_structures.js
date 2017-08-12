// Release 0 
console.log("----- Release 0 \n");

var array_of_colors = ["blue", "green", "red"];
var array_of_names = ["gmlqme", "mvpalf", "drpfl"];

console.log("Before: ");
console.log("\n");
console.log(array_of_colors);
console.log(array_of_names);
console.log("\n");

array_of_colors.push("yellow");
array_of_names.push("okvla");

console.log("After: ");
console.log("\n");
console.log(array_of_colors);
console.log(array_of_names);
console.log("\n");

// Release 1 
console.log("----- Release 1 \n");

function Car(name, miles, cylinders, isAutomatic) {

	// Initialize name, miles, cylinders, isAutomatic
	this.name = name;
	this.miles = miles;
	this.cylinders = cylinders;
	this.isAutomatic = isAutomatic;
	
	// Function as a property
	this.honk = function() { console.log("Bip!"); };
	
	console.log("... Car initialization completed!");
}

// Car 1

console.log("Let's build car 1 ...");
var anotherCar = new Car("Mazda RX4", 21.0, 6, false);
console.log("\n");
console.log("Printing the object ...");
console.log(anotherCar);
console.log("\n");
console.log("Our car can honk:");
anotherCar.honk();
console.log("\n");
if (anotherCar.isAutomatic == true)
{
  console.log("Our " + anotherCar.name + " is automatic, has" + anotherCar.cylinders + "cylinders and has made" + anotherCar.miles + " miles so far");
} else {
  console.log("Our "+ anotherCar.name + " is not automatic, has " + anotherCar.cylinders + " cylinders and has made " + anotherCar.miles + " miles so far");
}
console.log("\n");

// Car 2

console.log("Let's build car 2 ...");
var anotherCar = new Car("Datsun 710", 23, 4, true);
console.log("\n");
console.log("Printing the object ...");
console.log(anotherCar);
console.log("\n");
console.log("Our car can honk:");
anotherCar.honk();
console.log("\n");
if (anotherCar.isAutomatic == true)
{
  console.log("Our " + anotherCar.name + " is automatic, has " + anotherCar.cylinders + " cylinders and has made " + anotherCar.miles + " miles so far");
} else {
  console.log("Our "+ anotherCar.name + " is not automatic, has " + anotherCar.cylinders + " cylinders and has made " + anotherCar.miles + " miles so far");
}
