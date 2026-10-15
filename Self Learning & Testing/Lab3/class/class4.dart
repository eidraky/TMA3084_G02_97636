class Car {
  String model;
  String color;
  Car.axia() : model = 'Axia', color = 'Red';
}

void main() {
  var perodua = Car.axia();
  print(perodua.model);
}
