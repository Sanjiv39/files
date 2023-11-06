import 'dart:io';

void main() {
  print("Enter a week number (1-7): ");
  int weekNumber = int.parse(stdin.readLineSync()!);
  if (weekNumber == 1) {
    print("Monday");
  } else if (weekNumber == 2) {
    print("Tuesday");
  } else if (weekNumber == 3) {
    print("Wednesday");
  } else if (weekNumber == 4) {
    print("Thursday");
  } else if (weekNumber == 5) {
    print("Friday");
  } else if (weekNumber == 6) {
    print("Saturday");
  } else if (weekNumber == 7) {
    print("Sunday");
  }
}
