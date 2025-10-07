void main() {
  // 1. Define Variables
  int age = 25;
  double height = 5.9;
  String name = "Ellinestech";
  bool isActive = true;
  List<int> scores = [10, 20, 30, 40];

  print("Age: $age");
  print("Height: $height");
  print("Name: $name");
  print("Active: $isActive");
  print("Scores: $scores");

  // 2. Type Conversion
  print("\nType Conversion:");
  print("String to int: ${stringToInt("42")}");
  print("String to double: ${stringToDouble("42.5")}");
  print("Int to String: ${intToString(42)}");
  print("Int to double: ${intToDouble(42)}");

  // 3. Conversion Function
  print("\nConvert and Display:");
  convertAndDisplay("123");

  // 4. Control Flow
  print("\nIf-Else:");
  checkNumberSign(-5);
  checkVotingEligibility(20);

  print("\nSwitch Case:");
  printDayOfWeek(3);

  print("\nLoops:");
  print("For loop:");
  forLoop();

  print("While loop:");
  whileLoop();

  print("Do-While loop:");
  doWhileLoop();

  // 5. Combine Data & Control Flow
  print("\nList Iteration & Categorization:");
  List<int> numbers = [3, 15, 102, 7, 88];
  categorizeNumbers(numbers);
}

// Type Conversion Functions
int stringToInt(String value) => int.parse(value);
double stringToDouble(String value) => double.parse(value);
String intToString(int value) => value.toString();
double intToDouble(int value) => value.toDouble();

// Convert and Display Function
void convertAndDisplay(String number) {
  int intValue = int.parse(number);
  double doubleValue = double.parse(number);
  print("Integer: $intValue");
  print("Double: $doubleValue");
}

// If-Else Control Flow
void checkNumberSign(int num) {
  if (num > 0) {
    print("$num is positive");
  } else if (num < 0) {
    print("$num is negative");
  } else {
    print("Number is zero");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Eligible to vote");
  } else {
    print("Not eligible to vote");
  }
}

// Switch Case
void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

// Loops
void forLoop() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoop() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoop() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Combine Data & Control Flow
void categorizeNumbers(List<int> list) {
  for (int num in list) {
    print("Number: $num");
    print(num % 2 == 0 ? "Even" : "Odd");

    switch (num) {
      case <= 10:
        print("Category: Small");
        break;
      case <= 100:
        print("Category: Medium");
        break;
      default:
        print("Category: Large");
    }
    print("---");
  }
}