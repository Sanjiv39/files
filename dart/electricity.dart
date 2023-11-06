import 'dart:io';

void main() {
  print("Enter the electricity unit charges: ");
  double unitCharges = double.parse(stdin.readLineSync()!);

  double totalBill;

  if (unitCharges <= 50) {
    totalBill = unitCharges * 0.50;
  } else if (unitCharges <= 150) {
    totalBill = (50 * 0.50) + ((unitCharges - 50) * 0.75);
  } else if (unitCharges <= 250) {
    totalBill = (50 * 0.50) + (100 * 0.75) + ((unitCharges - 150) * 1.20);
  } else {
    totalBill = (50 * 0.50) +
        (100 * 0.75) +
        (100 * 1.20) +
        ((unitCharges - 250) * 1.50);
  }

  // Add a 20% surcharge
  totalBill += totalBill * 0.20;

  print("Total electricity bill: Rs. $totalBill");
}
