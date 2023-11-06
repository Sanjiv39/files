import 'dart:io';

void main() {
  print("Enter the student's name: ");
  String studentName = stdin.readLineSync()!;

  List<double> subjectMarks = [];

  for (int i = 1; i <= 5; i++) {
    print("Enter the marks for subject $i: ");
    double marks = double.parse(stdin.readLineSync()!);
    subjectMarks.add(marks);
  }

  double totalMarks = subjectMarks.reduce((a, b) => a + b);
  double averageMarks = totalMarks / 5;

  print("Student: $studentName");
  print("Total Marks: $totalMarks");
  print("Average Marks: $averageMarks");
}
