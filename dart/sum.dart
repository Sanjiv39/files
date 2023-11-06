import 'dart:io';

void main() {
  print("Enter numbers (one per line), and enter 'do' to calculate the sum:");
  
  double sum = 0.0;

  while (true) {
    String userInput = stdin.readLineSync()!;
    try {
      double number = double.parse(userInput);
      sum += number;
    } catch (e) {
      if (userInput.toLowerCase() == "do") {
        break;
      } else {
        print("Invalid input. Please enter a numeric value or 'do' to calculate the sum.");
      }
    }
  }

  print("The total sum of the numbers is: $sum");
}