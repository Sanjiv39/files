import 'dart:io';

void main() {
  print("Enter an integer: ");
  int intInput = int.parse(stdin.readLineSync()!);

  print("Enter a double: ");
  double doubleInput = double.parse(stdin.readLineSync()!);

  print("Enter a string: ");
  String stringInput = stdin.readLineSync()!;

  print("You entered an integer: $intInput");
  print("You entered a double: $doubleInput");
  print("You entered a string: $stringInput");
}