import 'dart:io';

void main() {
  print("Enter a value: ");
  String userInput = stdin.readLineSync()!;
  print("You entered: $userInput");
}