//Adding constructor
class Car {
  String model;
  String color;
  //constructor
  Car(this.model, this.color);
}

void main() {
  var perodua = Car('Axia', 'Red');
  print('Model name ${perodua.model}, color ${perodua.color}');
}
