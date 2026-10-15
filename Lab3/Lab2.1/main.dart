import 'myLib.dart' as emp;

void main() {
  double extraPayPerHr;
  var anisha = emp.Employee('CEO', 'Kuching', 5000, 7);
  if (anisha.salary >= 4000) {
    extraPayPerHr = 10;
  } else {
    extraPayPerHr = 20;
  }

  double total = anisha.salary + (anisha.overtimeHr * extraPayPerHr);
  print('Total Salary = \$$total USD');
}
