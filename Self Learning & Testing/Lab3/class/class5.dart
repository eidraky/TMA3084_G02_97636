//getter and setter
class Car {
  String _model = '';

  set modelName(String name) => _model = name;

  String get modelName => _model;
}

void main() {
  var perodua = Car();
  perodua.modelName = 'Axia 2026';
  print(perodua.modelName);
}
