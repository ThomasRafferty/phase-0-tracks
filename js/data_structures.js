var colors = ["blue", "red", "green", "yellow"];
var names = ["David", "Thomas", "Max", "Tatiana"];

colors.push("brown");
names.push("Maggie");

var horse_names = {};

for (var i = 0; i < names.length; i++) {
  horse_names[names[i]] = colors[i]
}

function assembly_line(car_type, car_model, car_color) {
  this.car_type = car_type
  this.car_model = car_model
  this.car_color = car_color
  this.car_made = function() {console.log("Another car made.")}
}

var new_car = new assembly_line("SUV", "Explorer", "Red");
console.log(new_car)
new_car.car_made()

var new_car = new assembly_line("Sedan", "Focus", "Blue");
console.log(new_car)
new_car.car_made()