import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  int sum = calculateSumOfDigits(number);

  print("Sum of digits in $number is $sum");
}

int calculateSumOfDigits(int num) {
  int sum = 0;

  while (num > 0) {
    int digit = num % 10;
    sum += digit;
    num ~/= 10; // Integer division to remove the last digit
  }

  return sum;
}
