import 'dart:io';

void main() {
  print("Enter your name: ");
  String name = stdin.readLineSync()!;
  print("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);
  if (age >= 18) {
    print("$name, you are eligible to vote!");
  } else {
    print("$name, you are not eligible to vote yet.");
  }
}
