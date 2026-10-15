abstract class Student {
  void contactInfo();
  void courseInfo() => print('Course : TMA3084');
}

class ITStudent extends Student {
  @override
  void contactInfo() => print('Contact : it@unimas');
}

void main() {
  var s = ITStudent();
  s.contactInfo();
  s.courseInfo();
}
