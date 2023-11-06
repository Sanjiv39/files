import 'dart:io';

void main() {
  print("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (isPalindrome(number)) {
    print("$number is a palindrome.");
  } else {
    print("$number is not a palindrome.");
  }
}

bool isPalindrome(int num) {
  int originalNumber = num;
  int reversedNumber = 0;

  while (num > 0) {
    int digit = num % 10;
    reversedNumber = reversedNumber * 10 + digit;
    num ~/= 10; // Integer division to remove the last digit
  }

  return originalNumber == reversedNumber;
}
