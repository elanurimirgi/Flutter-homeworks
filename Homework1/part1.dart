import 'dart:io'; // Necessary library for getting user input
void main() {
  while (true) { // Loop until valid input is received from the user
    try {
      print("Please enter the first number:");
      int num1 = getValidInput();

      print("Please enter the second number:");
      int num2 = getValidInput();

      print("Enter the type of operation: (1) Addition, (2) Subtraction, (3) Multiplication, (4) Division");
      String process = stdin.readLineSync()!;

      switch (process) {
        case '1':
          print("Addition operation selected.");
          summation(num1, num2);
          break;
        case '2':
          print("Subtraction operation selected.");
          extraction(num1, num2);
          break;
        case '3':
          print("Multiplication operation selected.");
          multiplication(num1, num2);
          break;
        case '4':
          print("Division operation selected.");
          dividation(num1, num2);
          break;
        default:
          print("Invalid operation type entered. Please enter (1), (2), (3), or (4).");
      }
      break; // Break the loop after successful operation
    } catch (e) {
      print("Invalid value entered. Please enter a valid number.");
    }
  }
}

// Gets a valid integer input from the user
int getValidInput() {
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null || input.isEmpty) {
      print("Invalid input. Please enter a number.");
      continue;
    }

    try {
      return int.parse(input);
    } catch (e) {
      print("Invalid input. Please enter an integer.");
    }
  }
}

void summation(int num1, int num2) {
  int result = num1 + num2;
  print("Result: $result");
}

void extraction(int num1, int num2) {
  int result = num1 - num2;
  print("Result: $result");
}

void multiplication(int num1, int num2) {
  int result = num1 * num2;
  print("Result: $result");
}

void dividation(int num1, int num2) {
  if (num2 == 0) {
    print("You cannot divide a number by zero.");
  } else {
    double result = num1 / num2; // Division result returns double
    print("Result: $result");
  }
}
