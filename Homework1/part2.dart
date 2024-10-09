import 'dart:io';

// Function that processes a list of numbers input by the user
void processNumbers(List<int> numbers) {
  List<int> evenNumbers = [];

  // Check each number in the list
  for (int number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }

  // If there are even numbers, print them; otherwise, show a message
  if (evenNumbers.isEmpty) {
    print("There are no even numbers in the list.");
  } else {
    print("Entered even numbers: $evenNumbers");
  }
}

// Get 10 numbers from the user
List<int> getUserInput() {
  List<int> numbers = [];

  for (int i = 0; i < 10; i++) {
    try {
      print("Enter number ${i + 1}:");
      String? input = stdin.readLineSync(); // null check
      if (input != null) {
        int number = int.parse(input);
        numbers.add(number);
      } else {
        print("Please enter a valid number.");
        i--; // Decrement loop variable to retry on invalid input
      }
    } catch (e) {
      print("Please enter a valid number.");
      i--; // Decrement loop variable to retry on invalid input
    }
  }

  return numbers;
}

void main() {
  // Get numbers from the user
  List<int> userNumbers = getUserInput();

  // Call the function to process the numbers
  processNumbers(userNumbers);
}
