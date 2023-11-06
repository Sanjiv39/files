import 'dart:io';

void main() {
  print("Enter a number to calculate its factorial: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print("Factorial is not defined for negative numbers.");
  } else {
    int factorial = calculateFactorial(number);
    print("Factorial of $number is $factorial");
  }
}

int calculateFactorial(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}
