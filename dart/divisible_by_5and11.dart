import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 5 == 0 && number % 11 == 0) {
    print("$number is divisible by both 5 and 11.");
  } else {
    print("$number is not divisible by both 5 and 11.");
  }
}
