import 'dart:io';

void main() {
  print("Enter the month number (1-12): ");
  int monthNumber = int.parse(stdin.readLineSync()!);
  int daysInMonth;
  switch (monthNumber) {
    case 1: // January
    case 3: // March
    case 5: // May
    case 7: // July
    case 8: // August
    case 10: // October
    case 12: // December
      daysInMonth = 31;
      break;
    case 4: // April
    case 6: // June
    case 9: // September
    case 11: // November
      daysInMonth = 30;
      break;
    case 2: // February
      daysInMonth = 28; // Assuming it's not a leap year
      break;
    default:
      print("Invalid month number. Please enter a number between 1 and 12.");
      return;
  }

  print("Number of days in the selected month: $daysInMonth");
}
