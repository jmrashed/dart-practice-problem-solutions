# Simple Calculator
Here's a sample Dart program for a simple calculator that can perform basic arithmetic operations like addition, subtraction, multiplication, and division:

```dart
import 'dart:io';

void main() {
  print('Simple Calculator');
  print('Enter first number:');
  double? num1 = double.parse(stdin.readLineSync()!);

  print('Enter second number:');
  double? num2 = double.parse(stdin.readLineSync()!);

  print('Enter an operator (+, -, *, /):');
  String? operator = stdin.readLineSync()!;

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print('Error: Division by zero');
        return;
      }
      break;
    default:
      print('Invalid operator');
      return;
  }

  print('Result: $num1 $operator $num2 = $result');
}
```

### Explanation:
1. **Import Dart I/O Library**:
   - `import 'dart:io';` is used to enable reading from the console.

2. **Main Function**:
   - The main function is the entry point of the Dart application.

3. **Input Reading**:
   - The program prompts the user to enter two numbers and an operator.
   - `stdin.readLineSync()` reads the input from the console as a string, and `double.parse()` converts it to a double.

4. **Switch Statement**:
   - The program uses a switch statement to determine which operation to perform based on the user input.

5. **Arithmetic Operations**:
   - The program performs addition, subtraction, multiplication, or division based on the operator provided.
   - It also handles division by zero by checking if `num2` is zero before performing the division.

6. **Output**:
   - The result of the operation is printed to the console.

You can run this program in a Dart environment, and it will function as a simple command-line calculator. If you have any questions or need further modifications, feel free to ask!