import 'dart:io';

class Student {
  String firstName;
  String lastName;
  List<int> _grades = [];

  Student(this.firstName, this.lastName, this._grades);

  List<int> get grades => _grades;

  void addGrade(int grade) {
    _grades.add(grade);
  }

  double calculateAverage() {
    if (_grades.isEmpty) {
      return 0;
    }
    return _grades.reduce((sum, index) => sum + index) / _grades.length;
  }
}

List<Student> students = [];

void main(List<String> args) {
  while (true) {
    print("Enter student first name (type 'q' to quit): ");
    String? firstName = stdin.readLineSync();
    if (firstName == 'q') break;

    print("Enter student last name: ");
    String? lastName = stdin.readLineSync();

    Student student = Student(firstName!, lastName!, []);

    while (true) {
      try {
        print("Do you want to add a grade? (Type 'e' for Yes, 'h' for No): ");
        String? response = stdin.readLineSync();

        if (response == 'e') {
          print("Enter the grade: ");
          String? gradeStr = stdin.readLineSync();

          // Try to parse the grade
          int? grade = int.tryParse(gradeStr!);

          if (grade != null) {
            // If a valid grade is entered, add it
            student.addGrade(grade);
          } else {
            // If an invalid grade is entered, show an error message
            print("Invalid grade entered. Please enter a numeric value.");
          }

        } else if (response == 'h') {
          // When grade entry is finished, show the average
          print("${student.firstName} ${student.lastName}'s average grade: ${student.calculateAverage().toStringAsFixed(2)}");
          break;  // Stop adding grades
        } else {
          // Warning for invalid inputs other than 'y' or 'n'
          print("Invalid input, please enter 'y' or 'n'.");
        }
      } catch (e) {
        // This block runs in case of any error
        print("An error occurred: ${e.toString()}. Please try again.");
      }
    }

    students.add(student);
  }

  print("\nAll students:");
  for (var student in students) {
    print("${student.firstName} ${student.lastName}'s average grade: ${student.calculateAverage().toStringAsFixed(2)}");
  }
}
