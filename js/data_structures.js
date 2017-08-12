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
	// In this context, 'this' refers to 
	// the individual car we're making
	console.log("Our new car:", this);
	
	// Initialize name, miles, cylinders, isAutomatic
	this.name = name;
	this.miles = miles;
	this.cylinders = cylinders;
	this.isAutomatic = isAutomatic;
	
	// Function as a property
	this.honk = function() { console.log("Bip!"); };
	
	console.log("Car initialization completed");
}