import 'dart:io';

void main() {
  print("Enter a number: ");
  int maxNumber = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= maxNumber; i++) {
    print("Multiplication Table for $i:");
    for (int j = 1; j <= 10; j++) {
      int result = i * j;
      print("$i x $j = $result");
    }
    print(""); // Add an empty line to separate tables
  }
}