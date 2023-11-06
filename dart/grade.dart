import 'dart:io';

void main() {
  print("Enter the Marks 1 : ");
  int m1 = int.parse(stdin.readLineSync()!);
  print("Enter the Marks 2 : ");
  int m2 = int.parse(stdin.readLineSync()!);
  print("Enter the Marks 3 : ");
  int m3 = int.parse(stdin.readLineSync()!);
  print("Enter the Marks 4 : ");
  int m4 = int.parse(stdin.readLineSync()!);
  print("Enter the Marks 5 : ");
  int m5 = int.parse(stdin.readLineSync()!);
  int total = m1 + m2 + m3 + m4 + m5;
  double perc = (total / 500) * 100;
  if (perc >= 90) {
    print("Grade A");
  } else if (perc >= 80) {
    print("Grade B");
  } else if (perc >= 70) {
    print("Grade C");
  } else if (perc >= 60) {
    print("Grade D");
  } else if (perc >= 40) {
    print("Grade E");
  } else if (perc < 40) {
    print("Grade F");
  }
}
