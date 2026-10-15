import 'myLib.dart' as emp;

void main() {
  double extraPayPerHr;
  var william = emp.Employee('Manager', 'Madrid', 7, 5000);
  if (william.salary >= 4000) {
    extraPayPerHr = 10;
  } else {
    extraPayPerHr = 20;
  }

  double total = william.salary + (william.overtimeHr * extraPayPerHr);
  print('Total Salary = \$$total USD');
}
