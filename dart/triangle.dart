import 'dart:io';

void main() {
  print("Enter the first angle of the triangle: ");
  double angle1 = double.parse(stdin.readLineSync()!);

  print("Enter the second angle of the triangle: ");
  double angle2 = double.parse(stdin.readLineSync()!);

  print("Enter the third angle of the triangle: ");
  double angle3 = double.parse(stdin.readLineSync()!);

  if (angle1 + angle2 + angle3 == 180) {
    print("The triangle is valid.");
  } else {
    print("The triangle is not valid.");
  }
}
