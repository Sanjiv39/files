import 'dart:io';

void main() {
  while (true) {
    print("Choose an option:");
    print("1. Area of Square");
    print("2. Perimeter of Square");
    print("3. Area of Rectangle");
    print("4. Perimeter of Rectangle");
    print("5. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        calculateAreaOfSquare();
        break;
      case 2:
        calculatePerimeterOfSquare();
        break;
      case 3:
        calculateAreaOfRectangle();
        break;
      case 4:
        calculatePerimeterOfRectangle();
        break;
      case 5:
        exit(0);
        break;
      default:
        print("Invalid choice. Please select a valid option (1-5).");
    }
  }
}

void calculateAreaOfSquare() {
  print("Enter the side length of the square: ");
  double sideLength = double.parse(stdin.readLineSync()!);
  double area = sideLength * sideLength;
  print("Area of the square: $area");
}

void calculatePerimeterOfSquare() {
  print("Enter the side length of the square: ");
  double sideLength = double.parse(stdin.readLineSync()!);
  double perimeter = 4 * sideLength;
  print("Perimeter of the square: $perimeter");
}

void calculateAreaOfRectangle() {
  print("Enter the length of the rectangle: ");
  double length = double.parse(stdin.readLineSync()!);
  print("Enter the width of the rectangle: ");
  double width = double.parse(stdin.readLineSync()!);
  double area = length * width;
  print("Area of the rectangle: $area");
}

void calculatePerimeterOfRectangle() {
  print("Enter the length of the rectangle: ");
  double length = double.parse(stdin.readLineSync()!);
  print("Enter the width of the rectangle: ");
  double width = double.parse(stdin.readLineSync()!);
  double perimeter = 2 * (length + width);
  print("Perimeter of the rectangle: $perimeter");
}
