import 'dart:io';

void main() {
  print("Enter the first number: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Enter the second number: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Enter the third number: ");
  int c = int.parse(stdin.readLineSync()!);
  if (a > b && a > c) {
    print("$a is the largest");
  } else if (b > a && b > c) {
    print("$b is the largest");
  } else if (c > b && c > a) {
    print("$c is the largest");
  }
}
