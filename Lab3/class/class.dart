//car class
//Step 1 declare class
class Car {
  //Step 2 add properties
  late String
  model; // late means the value is assigned after the object is created
  late String color;
  late String maxSpeed;
  late String numOfSeats;
}

//Step 3 create object
void main() {
  var perodua = Car();
  perodua.model = 'Axia';
  perodua.color = 'Red';
  perodua.maxSpeed = '180';
  perodua.numOfSeats = '5';
  print('Car model name is = ${perodua.model}');
  print('Car color is = ${perodua.color}');
  print('Car max speed is = ${perodua.maxSpeed}');
  print('Car num of seats is = ${perodua.numOfSeats}');
}
