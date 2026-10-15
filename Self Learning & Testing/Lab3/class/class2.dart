//adding methods to class
class Car {
  late String model;
  late int maxSpeed;
  void showInfo() {
    print('$model, max $maxSpeed km/h');
  }

  void drive() => print('$model is driving');
}

void main() {
  var myCar = Car();
  myCar.model = 'Axia';
  myCar.maxSpeed = 180;
  myCar.showInfo();
  myCar.drive();
}
