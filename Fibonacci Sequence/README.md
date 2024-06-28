# Fibonacci Sequence
A sample Dart program that generates the first `n` numbers of the Fibonacci sequence:

```dart
import 'dart:io';

void main() {
  print('Enter the number of terms for the Fibonacci sequence:');
  int? n = int.parse(stdin.readLineSync()!);

  if (n <= 0) {
    print('Please enter a positive integer.');
  } else {
    print('Fibonacci sequence:');
    for (int i = 0; i < n; i++) {
      print(fibonacci(i));
    }
  }
}

int fibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}
```

### Explanation:
1. **Import Dart I/O Library**:
   - `import 'dart:io';` is used to enable reading from the console.

2. **Main Function**:
   - The main function is the entry point of the Dart application.
   - It prompts the user to enter the number of terms for the Fibonacci sequence.
   - `stdin.readLineSync()` reads the input from the console as a string, and `int.parse()` converts it to an integer.
   - The program checks if the input is a positive integer. If not, it prompts the user to enter a valid number.

3. **Fibonacci Sequence Generation**:
   - The program uses a for loop to generate and print the first `n` numbers of the Fibonacci sequence.
   - It calls the `fibonacci` function for each term in the sequence.

4. **Fibonacci Function**:
   - The `fibonacci` function is a recursive function that calculates the Fibonacci number for a given position `n`.
   - If `n` is 0 or 1, it returns `n` as the base case.
   - For other values of `n`, it returns the sum of the Fibonacci numbers for the previous two positions (`n-1` and `n-2`).

### Example Run:
```
Enter the number of terms for the Fibonacci sequence:
10
Fibonacci sequence:
0
1
1
2
3
5
8
13
21
34
```

This program calculates the Fibonacci sequence using a recursive approach. If you have any questions or need further modifications, feel free to ask!