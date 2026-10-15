class Student {
  String name = '';
  String email = '';
}

class Teacher extends Student {
  void message() {
    print('I am from Teacher class');
  }
}

void main() {
  var trainer = Teacher();
  trainer.name = 'Anisha';
  trainer.message();
  print('My teacher name is ${trainer.name}');
}
